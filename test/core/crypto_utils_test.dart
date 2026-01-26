import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/crypto_utils.dart';

void main() {
  group('WemoCrypto', () {
    const mac = 'AABBCCDDEEFF';
    const serial = '1234567890';
    const password = 'password123';

    test('should encrypt with method 1 (original)', () {
      final result = WemoCrypto.encryptPassword(
        password: password,
        mac: mac,
        serial: serial,
        method: 1,
      );
      
      // Base64 string + 2 hex bytes for enc len + 2 hex bytes for orig len
      // encrypted length depends on padding.
      expect(result, isNotEmpty);
      expect(result.length > 4, true);
    });

    test('should encrypt with method 2 (RTOS)', () {
      final result = WemoCrypto.encryptPassword(
        password: password,
        mac: mac,
        serial: serial,
        method: 2,
      );
      
      expect(result, isNotEmpty);
    });

    test('should encrypt with method 3 (Binary Option)', () {
      final result = WemoCrypto.encryptPassword(
        password: password,
        mac: mac,
        serial: serial,
        method: 3,
      );
      
      expect(result, isNotEmpty);
    });

    test('should handle mac address with colons or lowercase', () {
      final result = WemoCrypto.encryptPassword(
        password: password,
        mac: 'aa:bb:cc:dd:ee:ff',
        serial: serial,
      );
      
      expect(result, isNotEmpty);
    });

    test('should throw if MAC is invalid length', () {
      expect(
        () => WemoCrypto.encryptPassword(
          password: password,
          mac: 'SHORT',
          serial: serial,
        ),
        throwsArgumentError,
      );
    });

    test('should throw if method is invalid', () {
      expect(
        () => WemoCrypto.encryptPassword(
          password: password,
          mac: mac,
          serial: serial,
          method: 99,
        ),
        throwsArgumentError,
      );
    });

    test('should omit length suffixes if addLengths is false', () {
      final result = WemoCrypto.encryptPassword(
        password: password,
        mac: mac,
        serial: serial,
        addLengths: false,
      );
      
      // Should be just base64, so length should be multiple of 4
      expect(result.length % 4, 0);
    });
  });
}
