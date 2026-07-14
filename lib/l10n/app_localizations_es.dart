// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'El dispositivo no admite esta acción.';

  @override
  String get errInvalidArgs =>
      'Se enviaron argumentos no válidos al dispositivo.';

  @override
  String get errActionFailed =>
      'El dispositivo no pudo realizar la acción solicitada.';

  @override
  String get errInvalidValue => 'Se proporcionó un valor no válido.';

  @override
  String get errValueOutOfRange => 'El valor está fuera del rango aceptable.';

  @override
  String get errFeatureNotAvailable =>
      'Esta función no está disponible en este dispositivo.';

  @override
  String get errOutOfMemory =>
      'El dispositivo no tiene memoria. Vuelve a intentarlo más tarde.';

  @override
  String get errManualActionRequired =>
      'Se requiere acción manual en el dispositivo.';

  @override
  String get errActionNotAuthorized => 'Esta acción no está autorizada.';

  @override
  String get errUnexpected =>
      'Se produjo un error inesperado. Por favor inténtalo de nuevo.';

  @override
  String get errDeviceUnreachableOffline =>
      'No se puede alcanzar el dispositivo. Puede que esté fuera de línea o en una red diferente.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Se agotó el tiempo de espera de la solicitud después de intentos de $attempts. Es posible que el dispositivo esté desconectado.';
  }

  @override
  String get errRequestTimedOut =>
      'Se agotó el tiempo de espera de la solicitud. Es posible que el dispositivo esté desconectado.';

  @override
  String get errNoRouteToHost =>
      'No se puede alcanzar el dispositivo. Verifique su conexión WiFi.';

  @override
  String get errHostUnreachable =>
      'El dispositivo es inalcanzable. Asegúrese de que esté encendido y conectado a WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'No se puede comunicar con el dispositivo después de los intentos de $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Error de red: no se puede comunicar con el dispositivo.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Esta acción no está autorizada en el dispositivo.';

  @override
  String get errDeviceServiceNotFound =>
      'Servicio de dispositivo no encontrado. Es posible que el dispositivo necesite una actualización de firmware.';

  @override
  String get errDeviceEncounteredError =>
      'El dispositivo encontró un error al procesar la solicitud.';

  @override
  String get errDeviceInternalError =>
      'El dispositivo arrojó un error interno.';

  @override
  String get errDeviceTempUnavailable =>
      'El dispositivo no está disponible temporalmente. Por favor inténtalo de nuevo.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'El dispositivo devolvió un error (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Error al $action en el dispositivo.';
  }

  @override
  String get errDeviceReturnedError => 'El dispositivo devolvió un error.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Se agotó el tiempo de espera de la operación $operation. Por favor inténtalo de nuevo.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'La operación expiró después de $seconds segundos.';
  }

  @override
  String get errOperationTimedOut =>
      'Se agotó el tiempo de operación. Por favor inténtalo de nuevo.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Habilite el permiso de red local en Configuración para buscar dispositivos.';

  @override
  String get errCannotAccessLocalNetwork =>
      'No se puede acceder a la red local. Habilite el permiso de red local en Configuración.';

  @override
  String get errCheckWifiConnection =>
      'No se pueden descubrir dispositivos. Verifique su conexión WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Descubrimiento interrumpido. Dispositivo(s) $count encontrados.';
  }

  @override
  String get errNoDevicesFound =>
      'No se encontraron dispositivos. Asegúrese de que los dispositivos estén encendidos y conectados a su red.';

  @override
  String get actionGetDeviceState => 'obtener el estado del dispositivo';

  @override
  String get actionSetDeviceState => 'establecer el estado del dispositivo';

  @override
  String get actionGetEnergyData => 'obtener datos de energía';

  @override
  String get actionScanNetworks => 'buscar redes';

  @override
  String get actionConnectWifi => 'conectarse a WiFi';

  @override
  String get actionCheckConnection => 'comprobar el estado de la conexión';

  @override
  String get actionResetDevice => 'restablecer dispositivo';

  @override
  String get actionPerform => 'realizar acción';

  @override
  String get suggestTryRefreshing =>
      'Intente actualizar la lista de dispositivos o verifique si el dispositivo responde.';

  @override
  String get suggestEnsurePoweredOn =>
      'Asegúrese de que el dispositivo esté encendido y conectado a su red WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Asegúrese de que su teléfono esté conectado a la misma red WiFi que sus dispositivos.';

  @override
  String get suggestCheckPhysical =>
      'Verifique el dispositivo físico en busca de botones o interruptores que necesiten atención.';

  @override
  String get suggestWaitAndTry => 'Espere un momento y vuelva a intentarlo.';

  @override
  String get suggestDeviceBusy =>
      'Es posible que el dispositivo esté ocupado. Inténtalo de nuevo en unos segundos.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonClose => 'Cerrar';

  @override
  String get commonDone => 'hecho';

  @override
  String get commonLater => 'Más tarde';

  @override
  String get commonRefresh => 'Actualizar';

  @override
  String get commonTryAgain => 'Inténtalo de nuevo';

  @override
  String get commonOpenSettings => 'Abrir configuración';

  @override
  String get commonGrant => 'subvención';

  @override
  String get commonFix => 'Arreglar';

  @override
  String get commonOn => 'encendido';

  @override
  String get commonOff => 'Apagado';

  @override
  String get commonOffline => 'Sin conexión';

  @override
  String get commonStatus => 'Estado';

  @override
  String get commonName => 'Nombre';

  @override
  String get commonType => 'Tipo';

  @override
  String get commonModel => 'modelo';

  @override
  String get commonManufacturer => 'Fabricante';

  @override
  String get commonSerial => 'Serie';

  @override
  String get commonFirmware => 'firmware';

  @override
  String get commonHost => 'Anfitrión';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Contraseña';

  @override
  String get commonUnknownWifi => 'Desconocido Wi-Fi';

  @override
  String get commonNotConnected => 'No conectado';

  @override
  String commonSecondsShort(int seconds) {
    return '$seconds';
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
      other: '$seconds segundos',
      one: '1 segundo',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'interruptor inteligente';

  @override
  String get deviceTypeLightSwitch => 'interruptor de luz';

  @override
  String get deviceTypeDimmer => 'atenuador';

  @override
  String get deviceTypeInsightPlug => 'Enchufe de percepción';

  @override
  String get deviceTypeMotionSensor => 'Sensor de movimiento';

  @override
  String get deviceTypeMaker => 'fabricante';

  @override
  String get deviceTypeBridge => 'puente';

  @override
  String get deviceTypeCoffeeMaker => 'Cafetera';

  @override
  String get deviceTypeCrockpot => 'olla de barro';

  @override
  String get deviceTypeHumidifier => 'humidificador';

  @override
  String get deviceTypeOutdoorPlug => 'Enchufe exterior';

  @override
  String get deviceTypeUnknown => 'Dispositivo desconocido';

  @override
  String get pairingStepGetStarted => 'Empezar';

  @override
  String get pairingStepConnectToDevice => 'Conectar al dispositivo';

  @override
  String get pairingStepFindDevice => 'Buscar dispositivo';

  @override
  String get pairingStepSelectNetwork => 'Seleccionar red';

  @override
  String get pairingStepConfiguring => 'Configurando';

  @override
  String get pairingStepReconnect => 'Reconectar';

  @override
  String get pairingStepFinalizing => 'Finalizando';

  @override
  String get pairingStepSuccess => 'Éxito';

  @override
  String get pairingStepError => 'error';

  @override
  String get homeToggleDebug => 'Alternar modo de depuración';

  @override
  String get homeRefreshDevices => 'Actualizar dispositivos';

  @override
  String get homeSettings => 'Configuración';

  @override
  String get homeDismiss => 'Descartar';

  @override
  String get homeDiscovering => 'Descubriendo dispositivos...';

  @override
  String get homeNoDevices => 'No se encontraron dispositivos';

  @override
  String get homeScanDevices => 'Buscar dispositivos';

  @override
  String get homeLookingForMore => 'Buscando más dispositivos...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados',
      one: '1 dispositivo encontrado',
      zero: 'No se encontraron dispositivos',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados, escaneando...',
      one: '1 dispositivo encontrado, escaneando...',
      zero: 'No se encontraron dispositivos, escaneando...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automático';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Conectado a WiFi';

  @override
  String get homePermissionExplanation =>
      'La información de ubicación se utiliza para encontrar los detalles de su Wi-Fi. El acceso a la red local le permite controlar sus interruptores y dispositivos inteligentes.';

  @override
  String get homeDebugLog => 'Registro de depuración';

  @override
  String get homeClear => 'Borrar';

  @override
  String get homeDebugEmpty =>
      'Toque actualizar para iniciar el descubrimiento y ver los registros...';

  @override
  String get homeProbeHint => 'IP: Puerto (por ejemplo, 192.168.1.100:49153)';

  @override
  String get homeProbe => 'sonda';

  @override
  String get homeScanning => 'Escaneando...';

  @override
  String get homeScanSubnet => 'Escanear toda la subred (corrección de iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plataforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get settingsSectionNetwork => 'Red';

  @override
  String get settingsSectionDeviceSetup => 'Configuración del dispositivo';

  @override
  String get settingsSectionDiscovery => 'Descubrimiento';

  @override
  String get settingsSectionAbout => 'Acerca de';

  @override
  String get settingsSectionDebug => 'Depurar';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '¡Permiso concedido! Nombre WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Ubicación concedida, pero también se necesita permiso de red local. Verifique la configuración.';

  @override
  String get settingsLocationRequired => 'Se requiere permiso de ubicación';

  @override
  String get settingsLocationRequiredBody =>
      'Para mostrar el nombre de su red WiFi, iOS requiere permiso de ubicación.';

  @override
  String get settingsRequiredPermissions => 'Permisos requeridos:';

  @override
  String get settingsPermissionList =>
      '1. Servicios de ubicación (\"Mientras se usa la aplicación\")\n2. Red local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: la detección de dispositivos funciona sin permiso de ubicación. Este permiso solo se utiliza para mostrar el nombre de su red WiFi.';

  @override
  String get settingsEnableLocation => 'Habilitar ubicación en configuración';

  @override
  String get settingsLocationDeniedBody =>
      'Se denegó el permiso de ubicación. Puede habilitarlo desde la configuración del sistema.';

  @override
  String get settingsStepsToEnable => 'Pasos para habilitar:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Abra Configuración\n2. Desplácese hasta \"Bit Switch\"\n3. Toca \"Ubicación\"\n4. Seleccione \"Mientras usa la aplicación\".\n5. Regrese a esta aplicación y toque el botón Actualizar.';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: El permiso de ubicación solo es necesario para mostrar el nombre WiFi. El descubrimiento de dispositivos funciona sin él.';

  @override
  String get settingsAdditionalPermission => 'Se necesita permiso adicional';

  @override
  String get settingsLocalNetworkBody =>
      'Se requiere permiso de red local para descubrir y controlar dispositivos Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Tiene permiso de ubicación, pero el nombre WiFi aún no está visible.';

  @override
  String get settingsPleaseEnable => 'Por favor habilite:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Ve a la configuración del iPhone\n2. Desplácese hacia abajo hasta \"Bit Switch\"\n3. Habilite la \"Red local\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Se requiere permiso de red local tanto para la detección de dispositivos como para el acceso al nombre WiFi en iOS.';

  @override
  String get settingsPairNewDevice => 'Emparejar nuevo dispositivo';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configurar un nuevo dispositivo Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Tiempo de espera de descubrimiento';

  @override
  String get settingsRequestTimeout => 'Solicitar tiempo de espera';

  @override
  String get settingsAutoRefresh => 'Actualización automática';

  @override
  String get settingsAutoRefreshOn =>
      'Activado: los estados del dispositivo se actualizan automáticamente';

  @override
  String get settingsAutoRefreshOff =>
      'Apagado: usar el botón de actualización manual';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervalo de actualización automática';

  @override
  String get settingsAbout => 'Acerca de Bit Switch';

  @override
  String get settingsVersion => 'Versión';

  @override
  String get settingsNetworkDiagnostics => 'Diagnóstico de red';

  @override
  String get settingsShowDebug => 'Mostrar modo de depuración';

  @override
  String get settingsShowDebugSubtitle =>
      'Mostrar controles de depuración y diagnósticos de red en la pantalla de inicio';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Mostrar el icono de depuración en la pantalla de inicio para solucionar problemas';

  @override
  String get settingsCurrentNetwork => 'Red actual';

  @override
  String get settingsNetworkAccessStatus => 'Estado de acceso a la red';

  @override
  String get settingsNetworkAccessGranted =>
      'El acceso a la red local está disponible';

  @override
  String get settingsNetworkAccessMissing =>
      'Es posible que se requieran permisos adicionales';

  @override
  String get settingsChecking => 'Comprobando...';

  @override
  String get settingsEnableLocalNetwork =>
      'Habilitar la red local en la configuración';

  @override
  String get settingsNotConnectedWifi => 'No conectado a WiFi';

  @override
  String get settingsPermissionRequiredView => 'Se requiere permiso para ver';

  @override
  String get settingsAllPermissionsGranted => 'Todos los permisos concedidos';

  @override
  String get settingsLocalNetworkNeeded => 'Se necesita permiso de red local';

  @override
  String get settingsLocationNeeded => 'Se necesita permiso de ubicación';

  @override
  String get settingsRefreshPermissions => 'Actualizar permisos';

  @override
  String get settingsAboutWifiPermission => 'Acerca del permiso de nombre WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Su nombre WiFi ayuda a confirmar que su teléfono y los dispositivos Wemo están en la misma red.';

  @override
  String get settingsWifiPermissionIos =>
      'En iOS, mostrar el nombre de su red WiFi requiere permiso de ubicación.';

  @override
  String get settingsImportant => 'Importante:';

  @override
  String get settingsPrivacyNote =>
      '• Su ubicación nunca es rastreada\n• No se recopilan ni almacenan datos de ubicación';

  @override
  String get settingsWifiPermissionImportant =>
      '• La detección de dispositivos funciona SIN este permiso\n• Esto sólo es necesario para mostrar el nombre WiFi\n• No se recopilan ni almacenan datos de ubicación';

  @override
  String get settingsGrantPermission => 'Conceder permiso';

  @override
  String get settingsHowLongScan => 'Cuánto tiempo para buscar dispositivos:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Tiempo de espera de descubrimiento establecido en $seconds segundos';
  }

  @override
  String get settingsHowLongResponses =>
      'Cuánto tiempo esperar para recibir respuestas del dispositivo:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Aumente este valor si ve errores de \"Conexión cerrada\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Tiempo de espera de solicitud establecido en $seconds segundos';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Establezca el intervalo para la actualización automática del estado:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalo de actualización establecido en $seconds segundos';
  }

  @override
  String get settingsAboutTagline =>
      'Un controlador local limpio y privado para sus dispositivos Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch utiliza el descubrimiento de redes locales para buscar y controlar dispositivos sin dependencias de la nube.';

  @override
  String get settingsVersionValue => 'Versión 1.0.1';

  @override
  String get settingsProtocol => 'Protocolo: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Dirección de multidifusión: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Puertos del dispositivo: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protocolo de control: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Consejo: asegúrese de que su dispositivo esté en la misma red que sus dispositivos Wemo y que la multidifusión UDP no esté bloqueada.';

  @override
  String get settingsDevicePaired =>
      '¡Dispositivo emparejado! Actualizando lista de dispositivos...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds segundos por solicitud';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Actualizando cada $seconds';
  }

  @override
  String get pairingTitle => 'Emparejar nuevo dispositivo';

  @override
  String get pairingSetupTitle => 'Configure su dispositivo Wemo';

  @override
  String get pairingBeforeBegin =>
      'Antes de comenzar, asegúrese de que su dispositivo Wemo esté en modo de configuración:';

  @override
  String get pairingPlugInTitle => 'Conecte su dispositivo Wemo';

  @override
  String get pairingPlugInBody =>
      'Conéctalo a la corriente y espera a que se inicie.';

  @override
  String get pairingBlinkingLedTitle => 'Busque el LED parpadeante';

  @override
  String get pairingBlinkingLedBody =>
      'Un LED parpadeante indica que el dispositivo está en modo de configuración.';

  @override
  String get pairingCheckWifiTitle => 'Verifique la red WiFi';

  @override
  String get pairingCheckWifiBody =>
      'El dispositivo transmitirá una red llamada \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Si el LED está fijo, mantenga presionado el botón de reinicio durante 5 segundos para ingresar al modo de configuración.';

  @override
  String get pairingStart => 'Empezar a emparejar';

  @override
  String get pairingConnectWifiTitle => 'Conectar al dispositivo WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Abra la configuración WiFi de su teléfono y conéctese a la red que comienza con \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Red actual';

  @override
  String get pairingConnectedToDevice => '¡Conectado al dispositivo Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Abra la configuración de WiFi';

  @override
  String get pairingConnectedButton => 'me he conectado';

  @override
  String get pairingLookingForDevice => 'Buscando su dispositivo Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'O ingrese el dispositivo IP manualmente:';

  @override
  String get pairingDeviceIp => 'Dirección del dispositivo IP';

  @override
  String get pairingConnectToIp => 'Conéctese a IP';

  @override
  String get pairingSelectHomeWifi => 'Seleccione la red de su hogar WiFi:';

  @override
  String get pairingRefreshNetworks => 'Actualizar redes';

  @override
  String get pairingIosScanLimitation =>
      'iOS prohíbe estrictamente que aplicaciones de terceros busquen redes Wi-Fi cercanas. Es posible que deba ingresar la red SSID manualmente.';

  @override
  String get pairingNoNetworks => 'No se encontraron redes';

  @override
  String get pairingScanAgain => 'Escanear de nuevo';

  @override
  String get pairingWifiPassword => 'WiFi Contraseña';

  @override
  String get pairingConnect => 'Conectar';

  @override
  String get pairingEnterNetworkManually => 'Ingresar a la red manualmente';

  @override
  String get pairingEnterNetworkName => 'Introduzca el nombre de la red:';

  @override
  String get pairingNetworkName => 'Nombre de red (SSID)';

  @override
  String get pairingUseNetwork => 'Utilice esta red';

  @override
  String get pairingConfiguringDevice => 'Configurando dispositivo...';

  @override
  String get pairingConfiguringWait =>
      'Espere mientras el dispositivo se conecta a su red.';

  @override
  String get pairingReconnectTitle => 'Vuelva a conectarse a su red';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Su dispositivo Wemo ahora se está conectando a \"$ssid\". Vuelva a conectar su teléfono a la misma red.';
  }

  @override
  String get pairingBackOnHome => '¡De vuelta a la red doméstica!';

  @override
  String get pairingReconnectedButton => 'me he vuelto a conectar';

  @override
  String get pairingFinalizingSetup => 'Finalizando la configuración...';

  @override
  String get pairingSetupComplete => '¡Configuración completa!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Conectado a $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Su dispositivo ahora está configurado y aparecerá en la pantalla de inicio.';

  @override
  String get pairingSomethingWrong => 'Algo salió mal';

  @override
  String get pairingStartOver => 'Empezar de nuevo';

  @override
  String get pairingErrorOpenWifi =>
      'No se pudo abrir la configuración de WiFi. Ábralos manualmente.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Su teléfono todavía está conectado a \"$ssid\". Abra la configuración de WiFi, conéctese a la red del dispositivo WeMo y vuelva a intentarlo.';
  }

  @override
  String get pairingLoadingLooking => 'Buscando dispositivo...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'No se pudo encontrar el dispositivo WeMo en $ip. Asegúrese de que su teléfono esté conectado a la red WeMo WiFi y vuelva a intentarlo. También puedes introducir el dispositivo IP manualmente.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Error al descubrir el dispositivo: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Conectando a $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'No se encontró ningún dispositivo en $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Error al conectar con $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Buscando redes...';

  @override
  String pairingErrorScanning(String error) {
    return 'No se pudieron escanear redes: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Seleccione una red e ingrese la contraseña.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Enviando credenciales de red...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Esperando que el dispositivo se conecte...';

  @override
  String pairingErrorConfigure(String error) {
    return 'No se pudo configurar la red: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Contraseña demasiado corta. Por favor verifique e intente nuevamente.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'No se pudo conectar. Por favor verifique la contraseña.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Se agotó el tiempo de conexión. Por favor inténtalo de nuevo.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Error al finalizar la configuración: $error';
  }

  @override
  String get detailRefreshState => 'Actualizar estado';

  @override
  String get detailDeviceInfo => 'Información del dispositivo';

  @override
  String get detailAdvanced => 'Avanzado';

  @override
  String get detailWifiSetup => 'Configuración de WiFi';

  @override
  String get detailReset => 'Reiniciar';

  @override
  String get detailUnreachable =>
      'El dispositivo es inalcanzable. Verifique la conexión de red.';

  @override
  String detailFailedToggle(String error) {
    return 'No se pudo alternar: $error';
  }

  @override
  String get detailDeviceInformation => 'Información del dispositivo';

  @override
  String get detailPermissionScan =>
      'Se requiere permiso para escanear redes WiFi.';

  @override
  String get detailScanFailedManual =>
      'No se pudieron escanear las redes. Ingrese el nombre de la red manualmente.';

  @override
  String get detailEnterNetworkNameError =>
      'Por favor ingrese o seleccione un nombre de red';

  @override
  String get detailEnterPasswordError =>
      'Por favor ingrese la contraseña de la red';

  @override
  String get detailWifiSuccess => '¡WiFi configurado exitosamente!';

  @override
  String get detailScanNetworks => 'Buscar redes';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configure la red WiFi para \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Redes disponibles';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS prohíbe estrictamente que aplicaciones de terceros busquen redes Wi-Fi cercanas. Ingrese el nombre de su red manualmente a continuación.';

  @override
  String get detailTapRefreshScan => 'Toque actualizar para buscar redes';

  @override
  String get detailEnterNetworkBelow =>
      'Ingrese el nombre de su red a continuación';

  @override
  String get detailNetworkCredentials => 'Credenciales de red';

  @override
  String get detailConnecting => 'Conectándose a la red...';

  @override
  String get detailConnected => '¡Conectado exitosamente!';

  @override
  String get detailPasswordShort => 'La contraseña es demasiado corta';

  @override
  String get detailAuthenticationFailed =>
      'Error de autenticación: verifique la contraseña';

  @override
  String get detailConnectionFailed => 'La conexión falló';

  @override
  String get detailSelectReset => 'Por favor seleccione qué restablecer';

  @override
  String get detailResetSchedulesWarning =>
      '• Se eliminarán todos los horarios y reglas de automatización.';

  @override
  String get detailResetWifiWarning => '• La configuración de WiFi se borrará';

  @override
  String get detailSetupAgainWarning =>
      '• Deberá configurar el dispositivo nuevamente';

  @override
  String get detailUnreachableWarning =>
      '• El dispositivo puede quedar temporalmente inalcanzable';

  @override
  String get detailConfirmReset => 'Confirmar reinicio';

  @override
  String detailConfirmResetDevice(String device) {
    return '¿Está seguro de que desea restablecer \"$device\"?';
  }

  @override
  String get detailThisWill => 'Esto:';

  @override
  String get detailCannotUndo => 'Esta acción no se puede deshacer.';

  @override
  String get detailYesReset => 'Sí, restablecer';

  @override
  String get detailResetSuccess => 'Restablecimiento del dispositivo exitoso';

  @override
  String get detailResetRemote =>
      'El dispositivo se reiniciará de forma remota';

  @override
  String get detailResetFailed => 'Error al restablecer';

  @override
  String get detailFactoryReset => 'Restablecimiento de fábrica';

  @override
  String get detailFactoryResetWarning =>
      'Esto borrará TODAS las configuraciones y restaurará el dispositivo a los valores predeterminados de fábrica. Deberá configurar el dispositivo nuevamente.\n\nEsta acción no se puede deshacer.';

  @override
  String get detailFactoryResetInitiated =>
      'Restablecimiento de fábrica iniciado';

  @override
  String get detailResetDevice => 'Restablecer dispositivo';

  @override
  String detailResetOptionsFor(String device) {
    return 'Restablecer opciones para \"$device\"';
  }

  @override
  String get detailResetUserData => 'Restablecer datos de usuario';

  @override
  String get detailResetUserDataSubtitle => 'Borra horarios y reglas';

  @override
  String get detailResetWifi => 'Restablecer la configuración de WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Será necesario volver a configurar el dispositivo';

  @override
  String get widgetBrightness => 'Brillo';

  @override
  String get widgetEnergyStatistics => 'Estadísticas energéticas';

  @override
  String get widgetCurrentPower => 'Potencia actual';

  @override
  String get widgetToday => 'hoy';

  @override
  String get widgetTotal => 'totales';

  @override
  String get widgetOnTimeToday => 'A tiempo hoy';

  @override
  String get widgetTotalOnTime => 'Total a tiempo';

  @override
  String get widgetStandby => 'En espera';

  @override
  String get widgetUnknown => 'Desconocido';

  @override
  String get widgetOpenNetwork => 'Red abierta';

  @override
  String get widgetWepInsecure => 'WEP (inseguro)';
}

/// The translations for Spanish Castilian, as used in Latin America and the Caribbean (`es_419`).
class AppLocalizationsEs419 extends AppLocalizationsEs {
  AppLocalizationsEs419() : super('es_419');

  @override
  String get errDeviceNotSupportAction =>
      'El dispositivo no admite esta acción.';

  @override
  String get errInvalidArgs =>
      'Se enviaron argumentos no válidos al dispositivo.';

  @override
  String get errActionFailed =>
      'El dispositivo no pudo realizar la acción solicitada.';

  @override
  String get errInvalidValue => 'Se proporcionó un valor no válido.';

  @override
  String get errValueOutOfRange => 'El valor está fuera del rango aceptable.';

  @override
  String get errFeatureNotAvailable =>
      'Esta función no está disponible en este dispositivo.';

  @override
  String get errOutOfMemory =>
      'El dispositivo no tiene memoria. Vuelve a intentarlo más tarde.';

  @override
  String get errManualActionRequired =>
      'Se requiere acción manual en el dispositivo.';

  @override
  String get errActionNotAuthorized => 'Esta acción no está autorizada.';

  @override
  String get errUnexpected =>
      'Se produjo un error inesperado. Por favor inténtalo de nuevo.';

  @override
  String get errDeviceUnreachableOffline =>
      'No se puede alcanzar el dispositivo. Puede que esté fuera de línea o en una red diferente.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Se agotó el tiempo de espera de la solicitud después de intentos de $attempts. Es posible que el dispositivo esté desconectado.';
  }

  @override
  String get errRequestTimedOut =>
      'Se agotó el tiempo de espera de la solicitud. Es posible que el dispositivo esté desconectado.';

  @override
  String get errNoRouteToHost =>
      'No se puede alcanzar el dispositivo. Verifique su conexión WiFi.';

  @override
  String get errHostUnreachable =>
      'El dispositivo es inalcanzable. Asegúrese de que esté encendido y conectado a WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'No se puede comunicar con el dispositivo después de los intentos de $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Error de red: no se puede comunicar con el dispositivo.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Esta acción no está autorizada en el dispositivo.';

  @override
  String get errDeviceServiceNotFound =>
      'Servicio de dispositivo no encontrado. Es posible que el dispositivo necesite una actualización de firmware.';

  @override
  String get errDeviceEncounteredError =>
      'El dispositivo encontró un error al procesar la solicitud.';

  @override
  String get errDeviceInternalError =>
      'El dispositivo arrojó un error interno.';

  @override
  String get errDeviceTempUnavailable =>
      'El dispositivo no está disponible temporalmente. Por favor inténtalo de nuevo.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'El dispositivo devolvió un error (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Error al $action en el dispositivo.';
  }

  @override
  String get errDeviceReturnedError => 'El dispositivo devolvió un error.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Se agotó el tiempo de espera de la operación $operation. Por favor inténtalo de nuevo.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'La operación expiró después de $seconds segundos.';
  }

  @override
  String get errOperationTimedOut =>
      'Se agotó el tiempo de operación. Por favor inténtalo de nuevo.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Habilite el permiso de red local en Configuración para buscar dispositivos.';

  @override
  String get errCannotAccessLocalNetwork =>
      'No se puede acceder a la red local. Habilite el permiso de red local en Configuración.';

  @override
  String get errCheckWifiConnection =>
      'No se pueden descubrir dispositivos. Verifique su conexión WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Descubrimiento interrumpido. Dispositivo(s) $count encontrados.';
  }

  @override
  String get errNoDevicesFound =>
      'No se encontraron dispositivos. Asegúrese de que los dispositivos estén encendidos y conectados a su red.';

  @override
  String get actionGetDeviceState => 'obtener el estado del dispositivo';

  @override
  String get actionSetDeviceState => 'establecer el estado del dispositivo';

  @override
  String get actionGetEnergyData => 'obtener datos de energía';

  @override
  String get actionScanNetworks => 'buscar redes';

  @override
  String get actionConnectWifi => 'conectarse a WiFi';

  @override
  String get actionCheckConnection => 'comprobar el estado de la conexión';

  @override
  String get actionResetDevice => 'restablecer dispositivo';

  @override
  String get actionPerform => 'realizar acción';

  @override
  String get suggestTryRefreshing =>
      'Intente actualizar la lista de dispositivos o verifique si el dispositivo responde.';

  @override
  String get suggestEnsurePoweredOn =>
      'Asegúrese de que el dispositivo esté encendido y conectado a su red WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Asegúrese de que su teléfono esté conectado a la misma red WiFi que sus dispositivos.';

  @override
  String get suggestCheckPhysical =>
      'Verifique el dispositivo físico en busca de botones o interruptores que necesiten atención.';

  @override
  String get suggestWaitAndTry => 'Espere un momento y vuelva a intentarlo.';

  @override
  String get suggestDeviceBusy =>
      'Es posible que el dispositivo esté ocupado. Inténtalo de nuevo en unos segundos.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonClose => 'Cerrar';

  @override
  String get commonDone => 'hecho';

  @override
  String get commonLater => 'Más tarde';

  @override
  String get commonRefresh => 'Actualizar';

  @override
  String get commonTryAgain => 'Inténtalo de nuevo';

  @override
  String get commonOpenSettings => 'Abrir configuración';

  @override
  String get commonGrant => 'subvención';

  @override
  String get commonFix => 'Arreglar';

  @override
  String get commonOn => 'encendido';

  @override
  String get commonOff => 'Apagado';

  @override
  String get commonOffline => 'Sin conexión';

  @override
  String get commonStatus => 'Estado';

  @override
  String get commonName => 'Nombre';

  @override
  String get commonType => 'Tipo';

  @override
  String get commonModel => 'modelo';

  @override
  String get commonManufacturer => 'Fabricante';

  @override
  String get commonSerial => 'Serie';

  @override
  String get commonFirmware => 'firmware';

  @override
  String get commonHost => 'Anfitrión';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Contraseña';

  @override
  String get commonUnknownWifi => 'Desconocido Wi-Fi';

  @override
  String get commonNotConnected => 'No conectado';

  @override
  String commonSecondsShort(int seconds) {
    return '$seconds';
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
      other: '$seconds segundos',
      one: '1 segundo',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'interruptor inteligente';

  @override
  String get deviceTypeLightSwitch => 'interruptor de luz';

  @override
  String get deviceTypeDimmer => 'atenuador';

  @override
  String get deviceTypeInsightPlug => 'Enchufe de percepción';

  @override
  String get deviceTypeMotionSensor => 'Sensor de movimiento';

  @override
  String get deviceTypeMaker => 'fabricante';

  @override
  String get deviceTypeBridge => 'puente';

  @override
  String get deviceTypeCoffeeMaker => 'Cafetera';

  @override
  String get deviceTypeCrockpot => 'olla de barro';

  @override
  String get deviceTypeHumidifier => 'humidificador';

  @override
  String get deviceTypeOutdoorPlug => 'Enchufe exterior';

  @override
  String get deviceTypeUnknown => 'Dispositivo desconocido';

  @override
  String get pairingStepGetStarted => 'Empezar';

  @override
  String get pairingStepConnectToDevice => 'Conectar al dispositivo';

  @override
  String get pairingStepFindDevice => 'Buscar dispositivo';

  @override
  String get pairingStepSelectNetwork => 'Seleccionar red';

  @override
  String get pairingStepConfiguring => 'Configurando';

  @override
  String get pairingStepReconnect => 'Reconectar';

  @override
  String get pairingStepFinalizing => 'Finalizando';

  @override
  String get pairingStepSuccess => 'Éxito';

  @override
  String get pairingStepError => 'error';

  @override
  String get homeToggleDebug => 'Alternar modo de depuración';

  @override
  String get homeRefreshDevices => 'Actualizar dispositivos';

  @override
  String get homeSettings => 'Configuración';

  @override
  String get homeDismiss => 'Descartar';

  @override
  String get homeDiscovering => 'Descubriendo dispositivos...';

  @override
  String get homeNoDevices => 'No se encontraron dispositivos';

  @override
  String get homeScanDevices => 'Buscar dispositivos';

  @override
  String get homeLookingForMore => 'Buscando más dispositivos...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados',
      one: '1 dispositivo encontrado',
      zero: 'No se encontraron dispositivos',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados, escaneando...',
      one: '1 dispositivo encontrado, escaneando...',
      zero: 'No se encontraron dispositivos, escaneando...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automático';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Conectado a WiFi';

  @override
  String get homePermissionExplanation =>
      'La información de ubicación se utiliza para encontrar los detalles de su Wi-Fi. El acceso a la red local le permite controlar sus interruptores y dispositivos inteligentes.';

  @override
  String get homeDebugLog => 'Registro de depuración';

  @override
  String get homeClear => 'Borrar';

  @override
  String get homeDebugEmpty =>
      'Toque actualizar para iniciar el descubrimiento y ver los registros...';

  @override
  String get homeProbeHint => 'IP: Puerto (por ejemplo, 192.168.1.100:49153)';

  @override
  String get homeProbe => 'sonda';

  @override
  String get homeScanning => 'Escaneando...';

  @override
  String get homeScanSubnet => 'Escanear toda la subred (corrección de iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plataforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get settingsSectionNetwork => 'Red';

  @override
  String get settingsSectionDeviceSetup => 'Configuración del dispositivo';

  @override
  String get settingsSectionDiscovery => 'Descubrimiento';

  @override
  String get settingsSectionAbout => 'Acerca de';

  @override
  String get settingsSectionDebug => 'Depurar';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '¡Permiso concedido! Nombre WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Ubicación concedida, pero también se necesita permiso de red local. Verifique la configuración.';

  @override
  String get settingsLocationRequired => 'Se requiere permiso de ubicación';

  @override
  String get settingsLocationRequiredBody =>
      'Para mostrar el nombre de su red WiFi, iOS requiere permiso de ubicación.';

  @override
  String get settingsRequiredPermissions => 'Permisos requeridos:';

  @override
  String get settingsPermissionList =>
      '1. Servicios de ubicación (\"Mientras se usa la aplicación\")\n2. Red local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: la detección de dispositivos funciona sin permiso de ubicación. Este permiso solo se utiliza para mostrar el nombre de su red WiFi.';

  @override
  String get settingsEnableLocation => 'Habilitar ubicación en configuración';

  @override
  String get settingsLocationDeniedBody =>
      'Se denegó el permiso de ubicación. Puede habilitarlo desde la configuración del sistema.';

  @override
  String get settingsStepsToEnable => 'Pasos para habilitar:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Abra Configuración\n2. Desplácese hasta \"Bit Switch\"\n3. Toca \"Ubicación\"\n4. Seleccione \"Mientras usa la aplicación\".\n5. Regrese a esta aplicación y toque el botón Actualizar.';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: El permiso de ubicación solo es necesario para mostrar el nombre WiFi. El descubrimiento de dispositivos funciona sin él.';

  @override
  String get settingsAdditionalPermission => 'Se necesita permiso adicional';

  @override
  String get settingsLocalNetworkBody =>
      'Se requiere permiso de red local para descubrir y controlar dispositivos Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Tiene permiso de ubicación, pero el nombre WiFi aún no está visible.';

  @override
  String get settingsPleaseEnable => 'Por favor habilite:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Ve a la configuración del iPhone\n2. Desplácese hacia abajo hasta \"Bit Switch\"\n3. Habilite la \"Red local\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Se requiere permiso de red local tanto para la detección de dispositivos como para el acceso al nombre WiFi en iOS.';

  @override
  String get settingsPairNewDevice => 'Emparejar nuevo dispositivo';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configurar un nuevo dispositivo Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Tiempo de espera de descubrimiento';

  @override
  String get settingsRequestTimeout => 'Solicitar tiempo de espera';

  @override
  String get settingsAutoRefresh => 'Actualización automática';

  @override
  String get settingsAutoRefreshOn =>
      'Activado: los estados del dispositivo se actualizan automáticamente';

  @override
  String get settingsAutoRefreshOff =>
      'Apagado: usar el botón de actualización manual';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervalo de actualización automática';

  @override
  String get settingsAbout => 'Acerca de Bit Switch';

  @override
  String get settingsVersion => 'Versión';

  @override
  String get settingsNetworkDiagnostics => 'Diagnóstico de red';

  @override
  String get settingsShowDebug => 'Mostrar modo de depuración';

  @override
  String get settingsShowDebugSubtitle =>
      'Mostrar controles de depuración y diagnósticos de red en la pantalla de inicio';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Mostrar el icono de depuración en la pantalla de inicio para solucionar problemas';

  @override
  String get settingsCurrentNetwork => 'Red actual';

  @override
  String get settingsNetworkAccessStatus => 'Estado de acceso a la red';

  @override
  String get settingsNetworkAccessGranted =>
      'El acceso a la red local está disponible';

  @override
  String get settingsNetworkAccessMissing =>
      'Es posible que se requieran permisos adicionales';

  @override
  String get settingsChecking => 'Comprobando...';

  @override
  String get settingsEnableLocalNetwork =>
      'Habilitar la red local en la configuración';

  @override
  String get settingsNotConnectedWifi => 'No conectado a WiFi';

  @override
  String get settingsPermissionRequiredView => 'Se requiere permiso para ver';

  @override
  String get settingsAllPermissionsGranted => 'Todos los permisos concedidos';

  @override
  String get settingsLocalNetworkNeeded => 'Se necesita permiso de red local';

  @override
  String get settingsLocationNeeded => 'Se necesita permiso de ubicación';

  @override
  String get settingsRefreshPermissions => 'Actualizar permisos';

  @override
  String get settingsAboutWifiPermission => 'Acerca del permiso de nombre WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Su nombre WiFi ayuda a confirmar que su teléfono y los dispositivos Wemo están en la misma red.';

  @override
  String get settingsWifiPermissionIos =>
      'En iOS, mostrar el nombre de su red WiFi requiere permiso de ubicación.';

  @override
  String get settingsImportant => 'Importante:';

  @override
  String get settingsPrivacyNote =>
      '• Su ubicación nunca es rastreada\n• No se recopilan ni almacenan datos de ubicación';

  @override
  String get settingsWifiPermissionImportant =>
      '• La detección de dispositivos funciona SIN este permiso\n• Esto sólo es necesario para mostrar el nombre WiFi\n• No se recopilan ni almacenan datos de ubicación';

  @override
  String get settingsGrantPermission => 'Conceder permiso';

  @override
  String get settingsHowLongScan => 'Cuánto tiempo para buscar dispositivos:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Tiempo de espera de descubrimiento establecido en $seconds segundos';
  }

  @override
  String get settingsHowLongResponses =>
      'Cuánto tiempo esperar para recibir respuestas del dispositivo:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Aumente este valor si ve errores de \"Conexión cerrada\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Tiempo de espera de solicitud establecido en $seconds segundos';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Establezca el intervalo para la actualización automática del estado:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalo de actualización establecido en $seconds segundos';
  }

  @override
  String get settingsAboutTagline =>
      'Un controlador local limpio y privado para sus dispositivos Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch utiliza el descubrimiento de redes locales para buscar y controlar dispositivos sin dependencias de la nube.';

  @override
  String get settingsVersionValue => 'Versión 1.0.1';

  @override
  String get settingsProtocol => 'Protocolo: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Dirección de multidifusión: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Puertos del dispositivo: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protocolo de control: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Consejo: asegúrese de que su dispositivo esté en la misma red que sus dispositivos Wemo y que la multidifusión UDP no esté bloqueada.';

  @override
  String get settingsDevicePaired =>
      '¡Dispositivo emparejado! Actualizando lista de dispositivos...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds segundos por solicitud';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Actualizando cada $seconds';
  }

  @override
  String get pairingTitle => 'Emparejar nuevo dispositivo';

  @override
  String get pairingSetupTitle => 'Configure su dispositivo Wemo';

  @override
  String get pairingBeforeBegin =>
      'Antes de comenzar, asegúrese de que su dispositivo Wemo esté en modo de configuración:';

  @override
  String get pairingPlugInTitle => 'Conecte su dispositivo Wemo';

  @override
  String get pairingPlugInBody =>
      'Conéctalo a la corriente y espera a que se inicie.';

  @override
  String get pairingBlinkingLedTitle => 'Busque el LED parpadeante';

  @override
  String get pairingBlinkingLedBody =>
      'Un LED parpadeante indica que el dispositivo está en modo de configuración.';

  @override
  String get pairingCheckWifiTitle => 'Verifique la red WiFi';

  @override
  String get pairingCheckWifiBody =>
      'El dispositivo transmitirá una red llamada \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Si el LED está fijo, mantenga presionado el botón de reinicio durante 5 segundos para ingresar al modo de configuración.';

  @override
  String get pairingStart => 'Empezar a emparejar';

  @override
  String get pairingConnectWifiTitle => 'Conectar al dispositivo WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Abra la configuración WiFi de su teléfono y conéctese a la red que comienza con \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Red actual';

  @override
  String get pairingConnectedToDevice => '¡Conectado al dispositivo Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Abra la configuración de WiFi';

  @override
  String get pairingConnectedButton => 'me he conectado';

  @override
  String get pairingLookingForDevice => 'Buscando su dispositivo Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'O ingrese el dispositivo IP manualmente:';

  @override
  String get pairingDeviceIp => 'Dirección del dispositivo IP';

  @override
  String get pairingConnectToIp => 'Conéctese a IP';

  @override
  String get pairingSelectHomeWifi => 'Seleccione la red de su hogar WiFi:';

  @override
  String get pairingRefreshNetworks => 'Actualizar redes';

  @override
  String get pairingIosScanLimitation =>
      'iOS prohíbe estrictamente que aplicaciones de terceros busquen redes Wi-Fi cercanas. Es posible que deba ingresar la red SSID manualmente.';

  @override
  String get pairingNoNetworks => 'No se encontraron redes';

  @override
  String get pairingScanAgain => 'Escanear de nuevo';

  @override
  String get pairingWifiPassword => 'WiFi Contraseña';

  @override
  String get pairingConnect => 'Conectar';

  @override
  String get pairingEnterNetworkManually => 'Ingresar a la red manualmente';

  @override
  String get pairingEnterNetworkName => 'Introduzca el nombre de la red:';

  @override
  String get pairingNetworkName => 'Nombre de red (SSID)';

  @override
  String get pairingUseNetwork => 'Utilice esta red';

  @override
  String get pairingConfiguringDevice => 'Configurando dispositivo...';

  @override
  String get pairingConfiguringWait =>
      'Espere mientras el dispositivo se conecta a su red.';

  @override
  String get pairingReconnectTitle => 'Vuelva a conectarse a su red';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Su dispositivo Wemo ahora se está conectando a \"$ssid\". Vuelva a conectar su teléfono a la misma red.';
  }

  @override
  String get pairingBackOnHome => '¡De vuelta a la red doméstica!';

  @override
  String get pairingReconnectedButton => 'me he vuelto a conectar';

  @override
  String get pairingFinalizingSetup => 'Finalizando la configuración...';

  @override
  String get pairingSetupComplete => '¡Configuración completa!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Conectado a $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Su dispositivo ahora está configurado y aparecerá en la pantalla de inicio.';

  @override
  String get pairingSomethingWrong => 'Algo salió mal';

  @override
  String get pairingStartOver => 'Empezar de nuevo';

  @override
  String get pairingErrorOpenWifi =>
      'No se pudo abrir la configuración de WiFi. Ábralos manualmente.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Su teléfono todavía está conectado a \"$ssid\". Abra la configuración de WiFi, conéctese a la red del dispositivo WeMo y vuelva a intentarlo.';
  }

  @override
  String get pairingLoadingLooking => 'Buscando dispositivo...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'No se pudo encontrar el dispositivo WeMo en $ip. Asegúrese de que su teléfono esté conectado a la red WeMo WiFi y vuelva a intentarlo. También puedes introducir el dispositivo IP manualmente.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Error al descubrir el dispositivo: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Conectando a $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'No se encontró ningún dispositivo en $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Error al conectar con $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Buscando redes...';

  @override
  String pairingErrorScanning(String error) {
    return 'No se pudieron escanear redes: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Seleccione una red e ingrese la contraseña.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Enviando credenciales de red...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Esperando que el dispositivo se conecte...';

  @override
  String pairingErrorConfigure(String error) {
    return 'No se pudo configurar la red: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Contraseña demasiado corta. Por favor verifique e intente nuevamente.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'No se pudo conectar. Por favor verifique la contraseña.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Se agotó el tiempo de conexión. Por favor inténtalo de nuevo.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Error al finalizar la configuración: $error';
  }

  @override
  String get detailRefreshState => 'Actualizar estado';

  @override
  String get detailDeviceInfo => 'Información del dispositivo';

  @override
  String get detailAdvanced => 'Avanzado';

  @override
  String get detailWifiSetup => 'Configuración de WiFi';

  @override
  String get detailReset => 'Reiniciar';

  @override
  String get detailUnreachable =>
      'El dispositivo es inalcanzable. Verifique la conexión de red.';

  @override
  String detailFailedToggle(String error) {
    return 'No se pudo alternar: $error';
  }

  @override
  String get detailDeviceInformation => 'Información del dispositivo';

  @override
  String get detailPermissionScan =>
      'Se requiere permiso para escanear redes WiFi.';

  @override
  String get detailScanFailedManual =>
      'No se pudieron escanear las redes. Ingrese el nombre de la red manualmente.';

  @override
  String get detailEnterNetworkNameError =>
      'Por favor ingrese o seleccione un nombre de red';

  @override
  String get detailEnterPasswordError =>
      'Por favor ingrese la contraseña de la red';

  @override
  String get detailWifiSuccess => '¡WiFi configurado exitosamente!';

  @override
  String get detailScanNetworks => 'Buscar redes';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configure la red WiFi para \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Redes disponibles';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS prohíbe estrictamente que aplicaciones de terceros busquen redes Wi-Fi cercanas. Ingrese el nombre de su red manualmente a continuación.';

  @override
  String get detailTapRefreshScan => 'Toque actualizar para buscar redes';

  @override
  String get detailEnterNetworkBelow =>
      'Ingrese el nombre de su red a continuación';

  @override
  String get detailNetworkCredentials => 'Credenciales de red';

  @override
  String get detailConnecting => 'Conectándose a la red...';

  @override
  String get detailConnected => '¡Conectado exitosamente!';

  @override
  String get detailPasswordShort => 'La contraseña es demasiado corta';

  @override
  String get detailAuthenticationFailed =>
      'Error de autenticación: verifique la contraseña';

  @override
  String get detailConnectionFailed => 'La conexión falló';

  @override
  String get detailSelectReset => 'Por favor seleccione qué restablecer';

  @override
  String get detailResetSchedulesWarning =>
      '• Se eliminarán todos los horarios y reglas de automatización.';

  @override
  String get detailResetWifiWarning => '• La configuración de WiFi se borrará';

  @override
  String get detailSetupAgainWarning =>
      '• Deberá configurar el dispositivo nuevamente';

  @override
  String get detailUnreachableWarning =>
      '• El dispositivo puede quedar temporalmente inalcanzable';

  @override
  String get detailConfirmReset => 'Confirmar reinicio';

  @override
  String detailConfirmResetDevice(String device) {
    return '¿Está seguro de que desea restablecer \"$device\"?';
  }

  @override
  String get detailThisWill => 'Esto:';

  @override
  String get detailCannotUndo => 'Esta acción no se puede deshacer.';

  @override
  String get detailYesReset => 'Sí, restablecer';

  @override
  String get detailResetSuccess => 'Restablecimiento del dispositivo exitoso';

  @override
  String get detailResetRemote =>
      'El dispositivo se reiniciará de forma remota';

  @override
  String get detailResetFailed => 'Error al restablecer';

  @override
  String get detailFactoryReset => 'Restablecimiento de fábrica';

  @override
  String get detailFactoryResetWarning =>
      'Esto borrará TODAS las configuraciones y restaurará el dispositivo a los valores predeterminados de fábrica. Deberá configurar el dispositivo nuevamente.\n\nEsta acción no se puede deshacer.';

  @override
  String get detailFactoryResetInitiated =>
      'Restablecimiento de fábrica iniciado';

  @override
  String get detailResetDevice => 'Restablecer dispositivo';

  @override
  String detailResetOptionsFor(String device) {
    return 'Restablecer opciones para \"$device\"';
  }

  @override
  String get detailResetUserData => 'Restablecer datos de usuario';

  @override
  String get detailResetUserDataSubtitle => 'Borra horarios y reglas';

  @override
  String get detailResetWifi => 'Restablecer la configuración de WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Será necesario volver a configurar el dispositivo';

  @override
  String get widgetBrightness => 'Brillo';

  @override
  String get widgetEnergyStatistics => 'Estadísticas energéticas';

  @override
  String get widgetCurrentPower => 'Potencia actual';

  @override
  String get widgetToday => 'hoy';

  @override
  String get widgetTotal => 'totales';

  @override
  String get widgetOnTimeToday => 'A tiempo hoy';

  @override
  String get widgetTotalOnTime => 'Total a tiempo';

  @override
  String get widgetStandby => 'En espera';

  @override
  String get widgetUnknown => 'Desconocido';

  @override
  String get widgetOpenNetwork => 'Red abierta';

  @override
  String get widgetWepInsecure => 'WEP (inseguro)';
}
