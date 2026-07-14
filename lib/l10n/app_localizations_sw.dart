// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Kifaa hakiauni kitendo hiki.';

  @override
  String get errInvalidArgs => 'Hoja batili zilitumwa kwa kifaa.';

  @override
  String get errActionFailed =>
      'Kifaa kimeshindwa kutekeleza kitendo kilichoombwa.';

  @override
  String get errInvalidValue => 'Thamani batili ilitolewa.';

  @override
  String get errValueOutOfRange => 'Thamani iko nje ya safu inayokubalika.';

  @override
  String get errFeatureNotAvailable =>
      'Kipengele hiki hakipatikani kwenye kifaa hiki.';

  @override
  String get errOutOfMemory => 'Kifaa hakina kumbukumbu. Jaribu tena baadaye.';

  @override
  String get errManualActionRequired =>
      'Kitendo cha kibinafsi kinahitajika kwenye kifaa.';

  @override
  String get errActionNotAuthorized => 'Kitendo hiki hakijaidhinishwa.';

  @override
  String get errUnexpected =>
      'Hitilafu isiyotarajiwa imetokea. Tafadhali jaribu tena.';

  @override
  String get errDeviceUnreachableOffline =>
      'Imeshindwa kufikia kifaa. Inaweza kuwa nje ya mtandao au kwenye mtandao tofauti.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Muda wa ombi umekwisha baada ya majaribio ya $attempts. Kifaa kinaweza kuwa nje ya mtandao.';
  }

  @override
  String get errRequestTimedOut =>
      'Muda wa ombi umekwisha. Kifaa kinaweza kuwa nje ya mtandao.';

  @override
  String get errNoRouteToHost =>
      'Haiwezi kufikia kifaa. Tafadhali angalia muunganisho wako wa WiFi.';

  @override
  String get errHostUnreachable =>
      'Kifaa hakipatikani. Tafadhali hakikisha kuwa imewashwa na kuunganishwa kwa WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Haiwezi kuwasiliana na kifaa baada ya majaribio ya $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Hitilafu ya mtandao: Haiwezi kuwasiliana na kifaa.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Kitendo hiki hakijaidhinishwa kwenye kifaa.';

  @override
  String get errDeviceServiceNotFound =>
      'Huduma ya kifaa haijapatikana. Kifaa kinaweza kuhitaji sasisho la programu.';

  @override
  String get errDeviceEncounteredError =>
      'Kifaa kilipata hitilafu katika kuchakata ombi.';

  @override
  String get errDeviceInternalError => 'Kifaa kilirejesha hitilafu ya ndani.';

  @override
  String get errDeviceTempUnavailable =>
      'Kifaa hakipatikani kwa sasa. Tafadhali jaribu tena.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Kifaa kilirejesha hitilafu (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Imeshindwa $action kwenye kifaa.';
  }

  @override
  String get errDeviceReturnedError => 'Kifaa kilileta hitilafu.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Muda wa operesheni ya $operation umekwisha. Tafadhali jaribu tena.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Muda wa operesheni umekwisha baada ya sekunde $seconds.';
  }

  @override
  String get errOperationTimedOut =>
      'Muda wa operesheni umekwisha. Tafadhali jaribu tena.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Tafadhali wezesha ruhusa ya Mtandao wa Karibu katika Mipangilio ili kupata vifaa.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Haiwezi kufikia mtandao wa ndani. Tafadhali wezesha ruhusa ya Mtandao wa Karibu katika Mipangilio.';

  @override
  String get errCheckWifiConnection =>
      'Imeshindwa kugundua vifaa. Tafadhali angalia muunganisho wako wa WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Ugunduzi umekatizwa. Kifaa cha $count kimepatikana.';
  }

  @override
  String get errNoDevicesFound =>
      'Hakuna vifaa vilivyopatikana. Tafadhali hakikisha kuwa vifaa vimewashwa na kuunganishwa kwenye mtandao wako.';

  @override
  String get actionGetDeviceState => 'pata hali ya kifaa';

  @override
  String get actionSetDeviceState => 'weka hali ya kifaa';

  @override
  String get actionGetEnergyData => 'pata data ya nishati';

  @override
  String get actionScanNetworks => 'tafuta mitandao';

  @override
  String get actionConnectWifi => 'kuunganisha kwa WiFi';

  @override
  String get actionCheckConnection => 'angalia hali ya muunganisho';

  @override
  String get actionResetDevice => 'weka upya kifaa';

  @override
  String get actionPerform => 'fanya kitendo';

  @override
  String get suggestTryRefreshing =>
      'Jaribu kuonyesha upya orodha ya vifaa au uangalie ikiwa kifaa kinajibu.';

  @override
  String get suggestEnsurePoweredOn =>
      'Hakikisha kuwa kifaa kimewashwa na kuunganishwa kwenye mtandao wako wa WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Hakikisha simu yako imeunganishwa kwenye mtandao wa WiFi sawa na vifaa vyako.';

  @override
  String get suggestCheckPhysical =>
      'Angalia kifaa halisi kwa vitufe au swichi zozote zinazohitaji kuzingatiwa.';

  @override
  String get suggestWaitAndTry => 'Subiri kidogo na ujaribu tena.';

  @override
  String get suggestDeviceBusy =>
      'Kifaa kinaweza kuwa na shughuli nyingi. Jaribu tena baada ya sekunde chache.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Ghairi';

  @override
  String get commonClose => 'Funga';

  @override
  String get commonDone => 'Imekamilika';

  @override
  String get commonLater => 'Baadaye';

  @override
  String get commonRefresh => 'Onyesha upya';

  @override
  String get commonTryAgain => 'Jaribu Tena';

  @override
  String get commonOpenSettings => 'Fungua Mipangilio';

  @override
  String get commonGrant => 'Ruzuku';

  @override
  String get commonFix => 'Rekebisha';

  @override
  String get commonOn => 'Washa';

  @override
  String get commonOff => 'Imezimwa';

  @override
  String get commonOffline => 'Nje ya mtandao';

  @override
  String get commonStatus => 'Hali';

  @override
  String get commonName => 'Jina';

  @override
  String get commonType => 'Aina';

  @override
  String get commonModel => 'Mfano';

  @override
  String get commonManufacturer => 'Mtengenezaji';

  @override
  String get commonSerial => 'Msururu';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Mwenyeji';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Nenosiri';

  @override
  String get commonUnknownWifi => 'Wi-Fi isiyojulikana';

  @override
  String get commonNotConnected => 'Haijaunganishwa';

  @override
  String commonSecondsShort(int seconds) {
    return '${seconds}s';
  }

  @override
  String commonMinutesShort(int minutes) {
    return '${minutes}m';
  }

  @override
  String commonHoursMinutesShort(int hours, int minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String commonDaysHoursShort(int days, int hours) {
    return '${days}d ${hours}h';
  }

  @override
  String commonSeconds(int seconds) {
    String _temp0 = intl.Intl.pluralLogic(
      seconds,
      locale: localeName,
      other: 'Sekunde $seconds',
      one: 'Sekunde 1',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Smart Switch';

  @override
  String get deviceTypeLightSwitch => 'Kubadili Mwanga';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Programu-jalizi ya Maarifa';

  @override
  String get deviceTypeMotionSensor => 'Sensorer ya Mwendo';

  @override
  String get deviceTypeMaker => 'Muumba';

  @override
  String get deviceTypeBridge => 'Daraja';

  @override
  String get deviceTypeCoffeeMaker => 'Muumba wa Kahawa';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Humidifier';

  @override
  String get deviceTypeOutdoorPlug => 'Plug ya Nje';

  @override
  String get deviceTypeUnknown => 'Kifaa kisichojulikana';

  @override
  String get pairingStepGetStarted => 'Anza';

  @override
  String get pairingStepConnectToDevice => 'Unganisha kwenye Kifaa';

  @override
  String get pairingStepFindDevice => 'Tafuta Kifaa';

  @override
  String get pairingStepSelectNetwork => 'Chagua Mtandao';

  @override
  String get pairingStepConfiguring => 'Inasanidi';

  @override
  String get pairingStepReconnect => 'Unganisha upya';

  @override
  String get pairingStepFinalizing => 'Inamalizia';

  @override
  String get pairingStepSuccess => 'Mafanikio';

  @override
  String get pairingStepError => 'Hitilafu';

  @override
  String get homeToggleDebug => 'Geuza hali ya utatuzi';

  @override
  String get homeRefreshDevices => 'Onyesha upya vifaa';

  @override
  String get homeSettings => 'Mipangilio';

  @override
  String get homeDismiss => 'Ondoa';

  @override
  String get homeDiscovering => 'Inagundua vifaa...';

  @override
  String get homeNoDevices => 'Hakuna vifaa vilivyopatikana';

  @override
  String get homeScanDevices => 'Changanua vifaa';

  @override
  String get homeLookingForMore => 'Inatafuta vifaa zaidi...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vifaa vya $count vimepatikana',
      one: 'Kifaa 1 kimepatikana',
      zero: 'Hakuna vifaa vilivyopatikana',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vifaa vya $count vimepatikana, vinachanganua...',
      one: 'Kifaa 1 kimepatikana, kinachanganua...',
      zero: 'Hakuna vifaa vilivyopatikana, inachanganua...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Otomatiki';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Imeunganishwa na WiFi';

  @override
  String get homePermissionExplanation =>
      'Maelezo ya eneo hutumika kupata maelezo yako ya Wi-Fi. Ufikiaji wa mtandao wa ndani hukuruhusu kudhibiti swichi na vifaa vyako mahiri.';

  @override
  String get homeDebugLog => 'Rekodi ya Utatuzi';

  @override
  String get homeClear => 'Wazi';

  @override
  String get homeDebugEmpty =>
      'Gusa onyesha upya ili uanze ugunduzi na uone kumbukumbu...';

  @override
  String get homeProbeHint => 'IP:Bandari (k.m. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Chunguza';

  @override
  String get homeScanning => 'Inachanganua...';

  @override
  String get homeScanSubnet => 'Changanua Subnet Nzima (Urekebishaji wa iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Jukwaa: $platform $version';
  }

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String get settingsSectionNetwork => 'Mtandao';

  @override
  String get settingsSectionDeviceSetup => 'Usanidi wa Kifaa';

  @override
  String get settingsSectionDiscovery => 'Ugunduzi';

  @override
  String get settingsSectionAbout => 'Kuhusu';

  @override
  String get settingsSectionDebug => 'Tatua';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Ruhusa imetolewa! WiFi jina: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Eneo limetolewa, lakini ruhusa ya Mtandao wa Karibu pia inahitajika. Angalia Mipangilio.';

  @override
  String get settingsLocationRequired => 'Ruhusa ya Mahali Inahitajika';

  @override
  String get settingsLocationRequiredBody =>
      'Ili kuonyesha jina la mtandao wako wa WiFi, iOS inahitaji ruhusa ya Mahali.';

  @override
  String get settingsRequiredPermissions => 'Ruhusa Zinazohitajika:';

  @override
  String get settingsPermissionList =>
      '1. Huduma za Mahali (\"Wakati Unatumia Programu\")\n2. Mtandao wa ndani';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Kumbuka: Ugunduzi wa kifaa hufanya kazi bila ruhusa ya eneo. Ruhusa hii inatumika tu kuonyesha jina la mtandao wako wa WiFi.';

  @override
  String get settingsEnableLocation => 'Washa Mahali katika Mipangilio';

  @override
  String get settingsLocationDeniedBody =>
      'Ruhusa ya eneo imekataliwa. Unaweza kuiwezesha kutoka kwa mipangilio ya mfumo.';

  @override
  String get settingsStepsToEnable => 'Hatua za kuwezesha:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Fungua Mipangilio\n2. Tembeza hadi \"Bit Switch\"\n3. Gusa \"Mahali\"\n4. Chagua \"Wakati Unatumia Programu\"\n5. Rudi kwenye programu hii na ugonge kitufe cha kuonyesha upya';

  @override
  String get settingsLocationOnlyWifiName =>
      'Kumbuka: Ruhusa ya eneo inahitajika tu ili kuonyesha jina la WiFi. Ugunduzi wa kifaa hufanya kazi bila hiyo.';

  @override
  String get settingsAdditionalPermission => 'Ruhusa ya Ziada Inahitajika';

  @override
  String get settingsLocalNetworkBody =>
      'Ruhusa ya Mtandao wa Ndani inahitajika ili kugundua na kudhibiti vifaa vya Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Una ruhusa ya Mahali, lakini jina la WiFi bado halionekani.';

  @override
  String get settingsPleaseEnable => 'Tafadhali wezesha:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Nenda kwa Mipangilio ya iPhone\n2. Tembeza chini hadi \"Bit Switch\"\n3. Wezesha \"Mtandao wa Ndani\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Ruhusa ya Mtandao wa Karibu inahitajika kwa ugunduzi wa kifaa na ufikiaji wa jina la WiFi kwenye iOS.';

  @override
  String get settingsPairNewDevice => 'Oanisha Kifaa Kipya';

  @override
  String get settingsPairNewDeviceSubtitle => 'Sanidi kifaa kipya cha Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Muda wa Ugunduzi umekwisha';

  @override
  String get settingsRequestTimeout => 'Muda wa Ombi umekwisha';

  @override
  String get settingsAutoRefresh => 'Onyesha upya kiotomatiki';

  @override
  String get settingsAutoRefreshOn =>
      'Imewashwa - hali ya kifaa itaonyesha upya kiotomatiki';

  @override
  String get settingsAutoRefreshOff =>
      'Imezimwa - Tumia kitufe cha kuonyesha upya mwenyewe';

  @override
  String get settingsAutoRefreshInterval =>
      'Kipindi cha kuonyesha upya kiotomatiki';

  @override
  String get settingsAbout => 'Kuhusu Bit Switch';

  @override
  String get settingsVersion => 'Toleo';

  @override
  String get settingsNetworkDiagnostics => 'Uchunguzi wa Mtandao';

  @override
  String get settingsShowDebug => 'Onyesha Hali ya Utatuzi';

  @override
  String get settingsShowDebugSubtitle =>
      'Onyesha vidhibiti vya utatuzi na uchunguzi wa mtandao kwenye skrini ya kwanza';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Onyesha ikoni ya utatuzi kwenye skrini ya nyumbani kwa utatuzi';

  @override
  String get settingsCurrentNetwork => 'Mtandao wa Sasa';

  @override
  String get settingsNetworkAccessStatus => 'Hali ya Ufikiaji wa Mtandao';

  @override
  String get settingsNetworkAccessGranted =>
      'Ufikiaji wa mtandao wa ndani unapatikana';

  @override
  String get settingsNetworkAccessMissing =>
      'Ruhusa za ziada zinaweza kuhitajika';

  @override
  String get settingsChecking => 'Inaangalia...';

  @override
  String get settingsEnableLocalNetwork =>
      'Washa Mtandao wa Karibu katika Mipangilio';

  @override
  String get settingsNotConnectedWifi => 'Haijaunganishwa na WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Ruhusa inahitajika ili kutazama';

  @override
  String get settingsAllPermissionsGranted => 'Ruhusa zote zimetolewa';

  @override
  String get settingsLocalNetworkNeeded =>
      'Ruhusa ya Mtandao wa Karibu inahitajika';

  @override
  String get settingsLocationNeeded => 'Ruhusa ya mahali inahitajika';

  @override
  String get settingsRefreshPermissions => 'Onyesha upya ruhusa';

  @override
  String get settingsAboutWifiPermission => 'Kuhusu WiFi Jina la Ruhusa';

  @override
  String get settingsWifiPermissionExplanation =>
      'Jina lako la WiFi husaidia kuthibitisha kuwa simu yako na vifaa vya Wemo viko kwenye mtandao mmoja.';

  @override
  String get settingsWifiPermissionIos =>
      'Kwenye iOS, kuonyesha jina la mtandao wako wa WiFi kunahitaji ruhusa ya eneo.';

  @override
  String get settingsImportant => 'Muhimu:';

  @override
  String get settingsPrivacyNote =>
      '• Eneo lako halifuatiliwi kamwe\n• Hakuna data ya eneo inayokusanywa au kuhifadhiwa';

  @override
  String get settingsWifiPermissionImportant =>
      '• Ugunduzi wa kifaa hufanya kazi BILA ruhusa hii\n• Hii inahitajika tu ili kuonyesha jina la WiFi\n• Hakuna data ya eneo inayokusanywa au kuhifadhiwa';

  @override
  String get settingsGrantPermission => 'Ruhusa ya Ruzuku';

  @override
  String get settingsHowLongScan => 'Muda gani wa kuchanganua vifaa:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Muda wa ugunduzi umewekwa kuwa sekunde $seconds';
  }

  @override
  String get settingsHowLongResponses => 'Muda wa kusubiri majibu ya kifaa:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Ongeza thamani hii ikiwa utaona hitilafu za \"Muunganisho umefungwa\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Muda wa ombi umewekwa kuwa $seconds sekunde';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Weka muda wa kusasisha hali kiotomatiki:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Muda wa kuonyesha upya umewekwa kwa sekunde $seconds';
  }

  @override
  String get settingsAboutTagline =>
      'Kidhibiti safi na cha kibinafsi cha vifaa vyako vya Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch hutumia ugunduzi wa mtandao wa ndani kutafuta na kudhibiti vifaa bila utegemezi wa wingu.';

  @override
  String get settingsVersionValue => 'Toleo la 1.0.1';

  @override
  String get settingsProtocol => 'Itifaki: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Anuani ya Utangazaji anuwai: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Bandari za Kifaa: 49152-49159';

  @override
  String get settingsControlProtocol => 'Itifaki ya Kudhibiti: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Kidokezo: Hakikisha kuwa kifaa chako kiko kwenye mtandao sawa na vifaa vyako vya Wemo na kwamba utangazaji anuwai wa UDP haujazuiwa.';

  @override
  String get settingsDevicePaired =>
      'Kifaa kimeoanishwa! Inaonyesha upya orodha ya vifaa...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'Sekunde $seconds kwa kila ombi';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Inaonyesha upya kila ${seconds}s';
  }

  @override
  String get pairingTitle => 'Oanisha Kifaa Kipya';

  @override
  String get pairingSetupTitle => 'Sanidi Kifaa Chako cha Wemo';

  @override
  String get pairingBeforeBegin =>
      'Kabla ya kuanza, hakikisha kifaa chako cha Wemo kiko katika hali ya usanidi:';

  @override
  String get pairingPlugInTitle => 'Chomeka kifaa chako cha Wemo';

  @override
  String get pairingPlugInBody => 'Iunganishe kwa nguvu na usubiri iwake.';

  @override
  String get pairingBlinkingLedTitle => 'Tafuta LED inayong\'aa';

  @override
  String get pairingBlinkingLedBody =>
      'Mwangaza wa LED unaonyesha kuwa kifaa kiko katika hali ya usanidi.';

  @override
  String get pairingCheckWifiTitle => 'Angalia mtandao wa WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Kifaa kitatangaza mtandao unaoitwa \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Ikiwa LED ni thabiti, shikilia kitufe cha kuweka upya kwa sekunde 5 ili kuingia katika hali ya usanidi.';

  @override
  String get pairingStart => 'Anza Kuoanisha';

  @override
  String get pairingConnectWifiTitle => 'Unganisha kwenye Kifaa WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Fungua mipangilio ya WiFi ya simu yako na uunganishe kwenye mtandao unaoanza na \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Mtandao wa Sasa';

  @override
  String get pairingConnectedToDevice => 'Imeunganishwa kwenye kifaa cha Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Fungua Mipangilio ya WiFi';

  @override
  String get pairingConnectedButton => 'Nimeunganisha';

  @override
  String get pairingLookingForDevice => 'Inatafuta kifaa chako cha Wemo...';

  @override
  String get pairingManualIpPrompt => 'Au ingiza kifaa IP wewe mwenyewe:';

  @override
  String get pairingDeviceIp => 'Anwani ya Kifaa IP';

  @override
  String get pairingConnectToIp => 'Unganisha na IP';

  @override
  String get pairingSelectHomeWifi =>
      'Chagua mtandao wako wa nyumbani wa WiFi:';

  @override
  String get pairingRefreshNetworks => 'Onyesha upya mitandao';

  @override
  String get pairingIosScanLimitation =>
      'iOS inakataza kabisa programu za wahusika wengine kuchanganua mitandao ya karibu ya Wi-Fi. Huenda ukahitaji kuingiza mtandao SSID wewe mwenyewe.';

  @override
  String get pairingNoNetworks => 'Hakuna mitandao iliyopatikana';

  @override
  String get pairingScanAgain => 'Changanua Tena';

  @override
  String get pairingWifiPassword => 'Nenosiri la WiFi';

  @override
  String get pairingConnect => 'Unganisha';

  @override
  String get pairingEnterNetworkManually => 'Ingiza mtandao wewe mwenyewe';

  @override
  String get pairingEnterNetworkName => 'Ingiza jina la mtandao:';

  @override
  String get pairingNetworkName => 'Jina la Mtandao (SSID)';

  @override
  String get pairingUseNetwork => 'Tumia Mtandao Huu';

  @override
  String get pairingConfiguringDevice => 'Inasanidi kifaa...';

  @override
  String get pairingConfiguringWait =>
      'Tafadhali subiri wakati kifaa kinaunganishwa kwenye mtandao wako.';

  @override
  String get pairingReconnectTitle => 'Unganisha tena kwa Mtandao Wako';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Kifaa chako cha Wemo sasa kinaunganishwa kwenye \"$ssid\". Tafadhali unganisha tena simu yako kwenye mtandao sawa.';
  }

  @override
  String get pairingBackOnHome => 'Rudi kwenye mtandao wa nyumbani!';

  @override
  String get pairingReconnectedButton => 'Nimeunganisha Upya';

  @override
  String get pairingFinalizingSetup => 'Inakamilisha usanidi...';

  @override
  String get pairingSetupComplete => 'Usanidi Umekamilika!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Imeunganishwa na $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Kifaa chako sasa kimesanidiwa na kitaonekana kwenye skrini ya kwanza.';

  @override
  String get pairingSomethingWrong => 'Kitu Kimeharibika';

  @override
  String get pairingStartOver => 'Anza upya';

  @override
  String get pairingErrorOpenWifi =>
      'Haikuweza kufungua mipangilio ya WiFi. Tafadhali zifungue wewe mwenyewe.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Simu yako bado imeunganishwa kwenye \"$ssid\". Tafadhali fungua mipangilio ya WiFi, unganisha kwenye mtandao wa kifaa wa WeMo, kisha ujaribu tena.';
  }

  @override
  String get pairingLoadingLooking => 'Inatafuta kifaa...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Haikuweza kupata kifaa cha WeMo kwa $ip. Hakikisha simu yako imeunganishwa kwenye mtandao wa WeMo WiFi, kisha ujaribu tena. Unaweza pia kuingiza kifaa IP wewe mwenyewe.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Hitilafu katika kugundua kifaa: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Inaunganisha kwa $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Hakuna kifaa kilichopatikana katika $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Hitilafu ya kuunganisha kwa $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Inatafuta mitandao...';

  @override
  String pairingErrorScanning(String error) {
    return 'Haikuweza kuchanganua mitandao: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Tafadhali chagua mtandao na uweke nenosiri.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Inatuma vitambulisho vya mtandao...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Inasubiri kifaa kuunganishwa...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Imeshindwa kusanidi mtandao: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Nenosiri fupi mno. Tafadhali angalia na ujaribu tena.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Imeshindwa kuunganisha. Tafadhali angalia nenosiri.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Muda wa muunganisho umekwisha. Tafadhali jaribu tena.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Hitilafu katika kukamilisha usanidi: $error';
  }

  @override
  String get detailRefreshState => 'Onyesha upya hali';

  @override
  String get detailDeviceInfo => 'Maelezo ya kifaa';

  @override
  String get detailAdvanced => 'Advanced';

  @override
  String get detailWifiSetup => 'Mpangilio wa WiFi';

  @override
  String get detailReset => 'Weka upya';

  @override
  String get detailUnreachable =>
      'Kifaa hakipatikani. Angalia muunganisho wa mtandao.';

  @override
  String detailFailedToggle(String error) {
    return 'Imeshindwa kugeuza: $error';
  }

  @override
  String get detailDeviceInformation => 'Maelezo ya Kifaa';

  @override
  String get detailPermissionScan =>
      'Ruhusa inahitajika ili kuchanganua mitandao ya WiFi.';

  @override
  String get detailScanFailedManual =>
      'Haikuweza kuchanganua mitandao. Ingiza jina la mtandao wewe mwenyewe.';

  @override
  String get detailEnterNetworkNameError =>
      'Tafadhali ingiza au chagua jina la mtandao';

  @override
  String get detailEnterPasswordError => 'Tafadhali weka nenosiri la mtandao';

  @override
  String get detailWifiSuccess => 'WiFi imesanidiwa kwa mafanikio!';

  @override
  String get detailScanNetworks => 'Changanua mitandao';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Sanidi mtandao wa WiFi wa \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Mitandao Inayopatikana';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS inakataza kabisa programu za wahusika wengine kuchanganua mitandao ya karibu ya Wi-Fi. Tafadhali ingiza jina la mtandao wako mwenyewe hapa chini.';

  @override
  String get detailTapRefreshScan => 'Gusa onyesha upya ili kutafuta mitandao';

  @override
  String get detailEnterNetworkBelow =>
      'Ingiza jina la mtandao wako hapa chini';

  @override
  String get detailNetworkCredentials => 'Kitambulisho cha Mtandao';

  @override
  String get detailConnecting => 'Inaunganisha kwenye mtandao...';

  @override
  String get detailConnected => 'Imeunganishwa kwa mafanikio!';

  @override
  String get detailPasswordShort => 'Nenosiri ni fupi mno';

  @override
  String get detailAuthenticationFailed =>
      'Uthibitishaji umeshindwa - angalia nenosiri';

  @override
  String get detailConnectionFailed => 'Muunganisho haukufaulu';

  @override
  String get detailSelectReset => 'Tafadhali chagua cha kuweka upya';

  @override
  String get detailResetSchedulesWarning =>
      '• Ratiba zote na sheria za otomatiki zitafutwa';

  @override
  String get detailResetWifiWarning => '• Mipangilio ya WiFi itafutwa';

  @override
  String get detailSetupAgainWarning => '• Utahitaji kusanidi kifaa tena';

  @override
  String get detailUnreachableWarning =>
      '• Kifaa kinaweza kutopatikana kwa muda';

  @override
  String get detailConfirmReset => 'Thibitisha Weka Upya';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Je, una uhakika unataka kuweka upya \"$device\"?';
  }

  @override
  String get detailThisWill => 'Hii itakuwa:';

  @override
  String get detailCannotUndo => 'Kitendo hiki hakiwezi kutenduliwa.';

  @override
  String get detailYesReset => 'Ndiyo, Weka Upya';

  @override
  String get detailResetSuccess => 'Imeweka upya kifaa';

  @override
  String get detailResetRemote => 'Kifaa kitaweka upya kwa mbali';

  @override
  String get detailResetFailed => 'Imeshindwa kuweka upya';

  @override
  String get detailFactoryReset => 'Rudisha Kiwanda';

  @override
  String get detailFactoryResetWarning =>
      'Hii itafuta mipangilio YOTE na kurejesha kifaa kwa chaguomsingi kilichotoka nayo kiwandani. Utahitaji kusanidi kifaa tena.\n\nKitendo hiki hakiwezi kutenduliwa.';

  @override
  String get detailFactoryResetInitiated =>
      'Uwekaji upya wa kiwanda umeanzishwa';

  @override
  String get detailResetDevice => 'Weka Upya Kifaa';

  @override
  String detailResetOptionsFor(String device) {
    return 'Weka upya chaguo za \"$device\"';
  }

  @override
  String get detailResetUserData => 'Weka upya Data ya Mtumiaji';

  @override
  String get detailResetUserDataSubtitle => 'Inafuta ratiba na sheria';

  @override
  String get detailResetWifi => 'Weka upya Mipangilio ya WiFi';

  @override
  String get detailResetWifiSubtitle => 'Kifaa kitahitaji kusanidiwa tena';

  @override
  String get widgetBrightness => 'Mwangaza';

  @override
  String get widgetEnergyStatistics => 'Takwimu za Nishati';

  @override
  String get widgetCurrentPower => 'Nguvu ya Sasa';

  @override
  String get widgetToday => 'Leo';

  @override
  String get widgetTotal => 'Jumla';

  @override
  String get widgetOnTimeToday => 'Kwa Wakati Leo';

  @override
  String get widgetTotalOnTime => 'Jumla kwa Wakati';

  @override
  String get widgetStandby => 'Kusubiri';

  @override
  String get widgetUnknown => 'Haijulikani';

  @override
  String get widgetOpenNetwork => 'Fungua mtandao';

  @override
  String get widgetWepInsecure => 'WEP (kutokuwa salama)';
}
