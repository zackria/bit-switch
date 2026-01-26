import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:pointycastle/export.dart';

/// Utility class for AES-128-CBC encryption used in Wemo WiFi setup
class WemoCrypto {
  /// Encrypt password using AES-128-CBC for Wemo WiFi setup
  ///
  /// [password] - The WiFi password to encrypt
  /// [mac] - Device MAC address (12 hex characters, no separators)
  /// [serial] - Device serial number
  /// [method] - Encryption method (1 = original, 2 = RTOS)
  /// [addLengths] - Whether to append length suffixes
  static String encryptPassword({
    required String password,
    required String mac,
    required String serial,
    int method = 1,
    bool addLengths = true,
  }) {
    // Clean MAC address (remove colons/dashes, uppercase)
    final cleanMac = mac.replaceAll(RegExp(r'[:\-]'), '').toUpperCase();

    if (cleanMac.length != 12) {
      throw ArgumentError('MAC address must be 12 hex characters');
    }

    // Generate keydata based on method
    String keydata;
    switch (method) {
      case 1:
        // Original method: MAC[0:6] + Serial + MAC[6:12]
        keydata = cleanMac.substring(0, 6) + serial + cleanMac.substring(6, 12);
        break;
      case 2:
        // RTOS method: adds a magic string
        keydata = cleanMac.substring(0, 6) +
            serial +
            cleanMac.substring(6, 12) +
            r'b3{8t;80dIN{ra83eC1s?M70?683@2Yf';
        break;
      case 3:
        // Binary option method (complex interleaving)
        const characters = r'Onboard$Application@Device&Information#Wemo';
        final mixed = _interleavedReverse(characters);
        final extra = base64Encode(utf8.encode(mixed)).substring(0, 32);
        keydata = cleanMac.substring(0, 3) +
            cleanMac.substring(9, 12) +
            serial +
            extra +
            cleanMac.substring(6, 9) +
            cleanMac.substring(3, 6);
        break;
      default:
        throw ArgumentError('Invalid encryption method: $method');
    }

    // Derive key and IV using OpenSSL-compatible EVP_BytesToKey
    final keydataBytes = Uint8List.fromList(utf8.encode(keydata));
    final salt = Uint8List.fromList(keydataBytes.take(8).toList());

    final keyIv = _evpBytesToKey(keydataBytes, salt, 16, 16);
    final key = keyIv.key;
    final iv = keyIv.iv;

    // Perform AES-128-CBC encryption
    final passwordBytes = Uint8List.fromList(utf8.encode(password));
    final encrypted = _aes128CbcEncrypt(passwordBytes, key, iv);

    // Base64 encode the result
    String result = base64Encode(encrypted);

    // Append lengths if required (original method)
    if (addLengths) {
      final encLen = encrypted.length.toRadixString(16).padLeft(2, '0');
      final origLen = password.length.toRadixString(16).padLeft(2, '0');
      result = '$result$encLen$origLen';
    }

    return result;
  }

  /// Interleaved reverse for binary option method
  static String _interleavedReverse(String input) {
    final result = StringBuffer();
    final len = input.length;
    for (int i = 0; i < len ~/ 2; i++) {
      result.write(input[len - 1 - i]);
      result.write(input[i]);
    }
    if (len % 2 == 1) {
      result.write(input[len ~/ 2]);
    }
    return result.toString();
  }

  /// OpenSSL EVP_BytesToKey key derivation
  static ({Uint8List key, Uint8List iv}) _evpBytesToKey(
    Uint8List password,
    Uint8List salt,
    int keyLen,
    int ivLen,
  ) {
    final totalLen = keyLen + ivLen;
    final result = <int>[];
    Uint8List? prev;

    while (result.length < totalLen) {
      final data = <int>[];
      if (prev != null) {
        data.addAll(prev);
      }
      data.addAll(password);
      data.addAll(salt);

      final digest = md5.convert(data);
      prev = Uint8List.fromList(digest.bytes);
      result.addAll(prev);
    }

    return (
      key: Uint8List.fromList(result.sublist(0, keyLen)),
      iv: Uint8List.fromList(result.sublist(keyLen, keyLen + ivLen)),
    );
  }

  /// AES-128-CBC encryption with PKCS7 padding
  static Uint8List _aes128CbcEncrypt(
    Uint8List plaintext,
    Uint8List key,
    Uint8List iv,
  ) {
    // PKCS7 padding
    const blockSize = 16;
    final padding = blockSize - (plaintext.length % blockSize);
    final padded = Uint8List(plaintext.length + padding);
    padded.setAll(0, plaintext);
    for (int i = plaintext.length; i < padded.length; i++) {
      padded[i] = padding;
    }

    // Set up AES-CBC cipher
    final cipher = CBCBlockCipher(AESEngine())
      ..init(true, ParametersWithIV(KeyParameter(key), iv));

    // Encrypt block by block
    final encrypted = Uint8List(padded.length);
    for (int offset = 0; offset < padded.length; offset += blockSize) {
      cipher.processBlock(padded, offset, encrypted, offset);
    }

    return encrypted;
  }
}
