/// Constants for Wemo device communication
library;

class WemoConstants {
  WemoConstants._();

  // SSDP Discovery
  static const String ssdpMulticastAddress = '239.255.255.250';
  static const int ssdpPort = 1900;
  static const String ssdpSearchTarget = 'urn:Belkin:service:basicevent:1';
  static const Duration ssdpTimeout = Duration(seconds: 12);

  // Device communication
  static const List<int> devicePorts = [
    49153,
    49152,
    49154,
    49151,
    49155,
    49156,
    49157,
    49158,
    49159,
  ];
  static const Duration requestTimeout = Duration(seconds: 3);
  static const int maxRetries = 3;

  // SOAP namespaces
  static const String soapEnvelopeNs =
      'http://schemas.xmlsoap.org/soap/envelope/';
  static const String soapEncodingNs =
      'http://schemas.xmlsoap.org/soap/encoding/';

  // Belkin service URNs
  static const String basicEventService = 'urn:Belkin:service:basicevent:1';
  static const String bridgeService = 'urn:Belkin:service:bridge:1';
  static const String insightService = 'urn:Belkin:service:insight:1';
  static const String dimmerService = 'urn:Belkin:service:dimmer:1';
  static const String wifiSetupService = 'urn:Belkin:service:WiFiSetup:1';

  // Device UUID prefixes for identification
  static const Map<String, String> deviceTypesByUuid = {
    'Socket-1_0': 'switch',
    'Lightswitch-1_0': 'lightswitch',
    'Dimmer-1_0': 'dimmer',
    'Dimmer-2_0': 'dimmer_v2',
    'Insight': 'insight',
    'Sensor': 'motion',
    'Maker': 'maker',
    'Bridge': 'bridge',
    'CoffeeMaker': 'coffeemaker',
    'Crockpot': 'crockpot',
    'Humidifier': 'humidifier',
  };

  // API endpoints
  static const String setupXmlPath = '/setup.xml';
  static const String controlPath = '/upnp/control';
  static const String eventPath = '/upnp/event';

  // Pairing mode constants
  static const String wemoApDefaultIp = '10.22.22.1';
  static final RegExp wemoApSsidPattern = RegExp(
    r'^wemo\..+$',
    caseSensitive: false,
  );
  static const Duration pairingDiscoveryTimeout = Duration(seconds: 15);
  // Per-port TCP-connect timeout when probing the device's own setup AP
  // (e.g. at wemoApDefaultIp). A freshly reset device can be slow to accept
  // new connections while busy with its own setup-mode startup work, so
  // this is deliberately more generous than the general-purpose probe
  // default used elsewhere (subnet scanning, known-device recovery).
  static const Duration pairingApProbeTimeout = Duration(seconds: 30);
  static const Duration wifiSetupTimeout = Duration(seconds: 60);
  static const Duration ssidPollInterval = Duration(seconds: 2);
}
