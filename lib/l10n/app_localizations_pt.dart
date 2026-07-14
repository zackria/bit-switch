// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'O dispositivo não suporta esta ação.';

  @override
  String get errInvalidArgs =>
      'Argumentos inválidos foram enviados ao dispositivo.';

  @override
  String get errActionFailed =>
      'O dispositivo não conseguiu executar a ação solicitada.';

  @override
  String get errInvalidValue => 'Um valor inválido foi fornecido.';

  @override
  String get errValueOutOfRange => 'O valor está fora do intervalo aceitável.';

  @override
  String get errFeatureNotAvailable =>
      'Este recurso não está disponível neste dispositivo.';

  @override
  String get errOutOfMemory =>
      'O dispositivo está sem memória. Tente novamente mais tarde.';

  @override
  String get errManualActionRequired =>
      'A ação manual é necessária no dispositivo.';

  @override
  String get errActionNotAuthorized => 'Esta ação não está autorizada.';

  @override
  String get errUnexpected =>
      'Ocorreu um erro inesperado. Por favor, tente novamente.';

  @override
  String get errDeviceUnreachableOffline =>
      'Não foi possível acessar o dispositivo. Pode estar offline ou em uma rede diferente.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'A solicitação expirou após tentativas do $attempts. O dispositivo pode estar off-line.';
  }

  @override
  String get errRequestTimedOut =>
      'A solicitação expirou. O dispositivo pode estar off-line.';

  @override
  String get errNoRouteToHost =>
      'Não é possível acessar o dispositivo. Verifique sua conexão WiFi.';

  @override
  String get errHostUnreachable =>
      'O dispositivo está inacessível. Certifique-se de que ele esteja ligado e conectado ao WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Não é possível comunicar com o dispositivo após tentativas do $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Erro de rede: não é possível comunicar com o dispositivo.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Esta ação não está autorizada no dispositivo.';

  @override
  String get errDeviceServiceNotFound =>
      'Serviço do dispositivo não encontrado. O dispositivo pode precisar de uma atualização de firmware.';

  @override
  String get errDeviceEncounteredError =>
      'O dispositivo encontrou um erro ao processar a solicitação.';

  @override
  String get errDeviceInternalError =>
      'O dispositivo retornou um erro interno.';

  @override
  String get errDeviceTempUnavailable =>
      'O dispositivo está temporariamente indisponível. Por favor, tente novamente.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'O dispositivo retornou um erro (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Falha ao $action no dispositivo.';
  }

  @override
  String get errDeviceReturnedError => 'O dispositivo retornou um erro.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'A operação do $operation expirou. Por favor, tente novamente.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'A operação expirou após segundos do $seconds.';
  }

  @override
  String get errOperationTimedOut =>
      'A operação expirou. Por favor, tente novamente.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Ative a permissão de rede local em Configurações para encontrar dispositivos.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Não é possível acessar a rede local. Ative a permissão de rede local em Configurações.';

  @override
  String get errCheckWifiConnection =>
      'Não foi possível descobrir dispositivos. Verifique sua conexão WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Descoberta interrompida. Dispositivo(s) $count encontrados.';
  }

  @override
  String get errNoDevicesFound =>
      'Nenhum dispositivo encontrado. Certifique-se de que os dispositivos estejam ligados e conectados à sua rede.';

  @override
  String get actionGetDeviceState => 'obter o estado do dispositivo';

  @override
  String get actionSetDeviceState => 'definir o estado do dispositivo';

  @override
  String get actionGetEnergyData => 'obter dados de energia';

  @override
  String get actionScanNetworks => 'procurar redes';

  @override
  String get actionConnectWifi => 'conectar a WiFi';

  @override
  String get actionCheckConnection => 'verifique o status da conexão';

  @override
  String get actionResetDevice => 'redefinir dispositivo';

  @override
  String get actionPerform => 'realizar ação';

  @override
  String get suggestTryRefreshing =>
      'Tente atualizar a lista de dispositivos ou verifique se o dispositivo está respondendo.';

  @override
  String get suggestEnsurePoweredOn =>
      'Certifique-se de que o dispositivo esteja ligado e conectado à rede WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Certifique-se de que seu telefone esteja conectado à mesma rede WiFi que seus dispositivos.';

  @override
  String get suggestCheckPhysical =>
      'Verifique se há botões ou interruptores no dispositivo físico que precisem de atenção.';

  @override
  String get suggestWaitAndTry => 'Espere um momento e tente novamente.';

  @override
  String get suggestDeviceBusy =>
      'O dispositivo pode estar ocupado. Tente novamente em alguns segundos.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonClose => 'Fechar';

  @override
  String get commonDone => 'Concluído';

  @override
  String get commonLater => 'Mais tarde';

  @override
  String get commonRefresh => 'Atualizar';

  @override
  String get commonTryAgain => 'Tente novamente';

  @override
  String get commonOpenSettings => 'Abra Configurações';

  @override
  String get commonGrant => 'Conceder';

  @override
  String get commonFix => 'Correção';

  @override
  String get commonOn => 'Ligado';

  @override
  String get commonOff => 'Desligado';

  @override
  String get commonOffline => 'Off-line';

  @override
  String get commonStatus => 'Estado';

  @override
  String get commonName => 'Nome';

  @override
  String get commonType => 'Tipo';

  @override
  String get commonModel => 'Modelo';

  @override
  String get commonManufacturer => 'Fabricante';

  @override
  String get commonSerial => 'Série';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Anfitrião';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Senha';

  @override
  String get commonUnknownWifi => 'Desconhecido Wi-Fi';

  @override
  String get commonNotConnected => 'Não conectado';

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
      other: 'Segundos $seconds',
      one: '1 segundo',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Interruptor inteligente';

  @override
  String get deviceTypeLightSwitch => 'Interruptor de luz';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Plugue de insights';

  @override
  String get deviceTypeMotionSensor => 'Sensor de movimento';

  @override
  String get deviceTypeMaker => 'Criador';

  @override
  String get deviceTypeBridge => 'Ponte';

  @override
  String get deviceTypeCoffeeMaker => 'Cafeteira';

  @override
  String get deviceTypeCrockpot => 'Panela elétrica';

  @override
  String get deviceTypeHumidifier => 'Umidificador';

  @override
  String get deviceTypeOutdoorPlug => 'Plugue externo';

  @override
  String get deviceTypeUnknown => 'Dispositivo desconhecido';

  @override
  String get pairingStepGetStarted => 'Comece';

  @override
  String get pairingStepConnectToDevice => 'Conectar ao dispositivo';

  @override
  String get pairingStepFindDevice => 'Encontrar dispositivo';

  @override
  String get pairingStepSelectNetwork => 'Selecione Rede';

  @override
  String get pairingStepConfiguring => 'Configurando';

  @override
  String get pairingStepReconnect => 'Reconectar';

  @override
  String get pairingStepFinalizing => 'Finalizando';

  @override
  String get pairingStepSuccess => 'Sucesso';

  @override
  String get pairingStepError => 'Erro';

  @override
  String get homeToggleDebug => 'Alternar modo de depuração';

  @override
  String get homeRefreshDevices => 'Atualizar dispositivos';

  @override
  String get homeSettings => 'Configurações';

  @override
  String get homeDismiss => 'Dispensar';

  @override
  String get homeDiscovering => 'Descobrindo dispositivos...';

  @override
  String get homeNoDevices => 'Nenhum dispositivo encontrado';

  @override
  String get homeScanDevices => 'Procurar dispositivos';

  @override
  String get homeLookingForMore => 'Procurando por mais dispositivos...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados',
      one: '1 dispositivo encontrado',
      zero: 'Nenhum dispositivo encontrado',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados, verificando...',
      one: '1 dispositivo encontrado, verificando...',
      zero: 'Nenhum dispositivo encontrado, verificando...',
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
      'As informações de localização são usadas para encontrar os detalhes do seu Wi-Fi. O acesso à rede local permite controlar seus switches e dispositivos inteligentes.';

  @override
  String get homeDebugLog => 'Registro de depuração';

  @override
  String get homeClear => 'Limpar';

  @override
  String get homeDebugEmpty =>
      'Toque em atualizar para iniciar a descoberta e ver os registros...';

  @override
  String get homeProbeHint => 'IP:Porta (por exemplo, 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sondar';

  @override
  String get homeScanning => 'Digitalizando...';

  @override
  String get homeScanSubnet => 'Digitalizar toda a sub-rede (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plataforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsSectionNetwork => 'Rede';

  @override
  String get settingsSectionDeviceSetup => 'Configuração do dispositivo';

  @override
  String get settingsSectionDiscovery => 'Descoberta';

  @override
  String get settingsSectionAbout => 'Sobre';

  @override
  String get settingsSectionDebug => 'Depurar';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Permissão concedida! Nome WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Localização concedida, mas também é necessária permissão de rede local. Verifique as configurações.';

  @override
  String get settingsLocationRequired => 'Permissão de localização necessária';

  @override
  String get settingsLocationRequiredBody =>
      'Para exibir o nome da rede WiFi, o iOS requer permissão de localização.';

  @override
  String get settingsRequiredPermissions => 'Permissões necessárias:';

  @override
  String get settingsPermissionList =>
      '1. Serviços de localização (\"Durante o uso do aplicativo\")\n2. Rede local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: a descoberta de dispositivos funciona sem permissão de localização. Esta permissão é usada apenas para exibir o nome da sua rede WiFi.';

  @override
  String get settingsEnableLocation => 'Ativar localização nas configurações';

  @override
  String get settingsLocationDeniedBody =>
      'A permissão de localização foi negada. Você pode habilitá-lo nas configurações do sistema.';

  @override
  String get settingsStepsToEnable => 'Etapas para ativar:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Abra Configurações\n2. Vá até \"Bit Switch\"\n3. Toque em \"Localização\"\n4. Selecione \"Ao usar o aplicativo\"\n5. Volte a este aplicativo e toque no botão Atualizar';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: A permissão de localização só é necessária para exibir o nome WiFi. A descoberta de dispositivos funciona sem ele.';

  @override
  String get settingsAdditionalPermission => 'Permissão adicional necessária';

  @override
  String get settingsLocalNetworkBody =>
      'É necessária permissão de rede local para descobrir e controlar dispositivos Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Você tem permissão de localização, mas o nome WiFi ainda não está visível.';

  @override
  String get settingsPleaseEnable => 'Ative:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Vá para as configurações do iPhone\n2. Role para baixo até \"Bit Switch\"\n3. Habilite \"Rede Local\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'A permissão de rede local é necessária para descoberta de dispositivos e acesso ao nome WiFi no iOS.';

  @override
  String get settingsPairNewDevice => 'Emparelhar novo dispositivo';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configure um novo dispositivo Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Tempo limite de descoberta';

  @override
  String get settingsRequestTimeout => 'Solicitar tempo limite';

  @override
  String get settingsAutoRefresh => 'Atualização automática';

  @override
  String get settingsAutoRefreshOn =>
      'Ativado – os estados do dispositivo são atualizados automaticamente';

  @override
  String get settingsAutoRefreshOff =>
      'Desligado - Usar botão de atualização manual';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervalo de atualização automática';

  @override
  String get settingsAbout => 'Sobre Bit Switch';

  @override
  String get settingsVersion => 'Versão';

  @override
  String get settingsNetworkDiagnostics => 'Diagnóstico de rede';

  @override
  String get settingsShowDebug => 'Mostrar modo de depuração';

  @override
  String get settingsShowDebugSubtitle =>
      'Mostrar controles de depuração e diagnósticos de rede na tela inicial';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Mostrar ícone de depuração na tela inicial para solução de problemas';

  @override
  String get settingsCurrentNetwork => 'Rede atual';

  @override
  String get settingsNetworkAccessStatus => 'Status de acesso à rede';

  @override
  String get settingsNetworkAccessGranted =>
      'O acesso à rede local está disponível';

  @override
  String get settingsNetworkAccessMissing =>
      'Permissões adicionais podem ser necessárias';

  @override
  String get settingsChecking => 'Verificando...';

  @override
  String get settingsEnableLocalNetwork =>
      'Habilite a rede local nas configurações';

  @override
  String get settingsNotConnectedWifi => 'Não conectado ao WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Permissão necessária para visualizar';

  @override
  String get settingsAllPermissionsGranted => 'Todas as permissões concedidas';

  @override
  String get settingsLocalNetworkNeeded => 'Permissão de rede local necessária';

  @override
  String get settingsLocationNeeded => 'Permissão de localização necessária';

  @override
  String get settingsRefreshPermissions => 'Atualizar permissões';

  @override
  String get settingsAboutWifiPermission => 'Sobre a permissão de nome WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Seu nome WiFi ajuda a confirmar que seu telefone e os dispositivos Wemo estão na mesma rede.';

  @override
  String get settingsWifiPermissionIos =>
      'No iOS, a exibição do nome da rede WiFi requer permissão de localização.';

  @override
  String get settingsImportant => 'Importante:';

  @override
  String get settingsPrivacyNote =>
      '• Sua localização nunca é rastreada\n• Nenhum dado de localização é coletado ou armazenado';

  @override
  String get settingsWifiPermissionImportant =>
      '• A descoberta de dispositivos funciona SEM esta permissão\n• Isso só é necessário para mostrar o nome WiFi\n• Nenhum dado de localização é coletado ou armazenado';

  @override
  String get settingsGrantPermission => 'Conceder permissão';

  @override
  String get settingsHowLongScan => 'Quanto tempo para procurar dispositivos:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Tempo limite de descoberta definido para segundos $seconds';
  }

  @override
  String get settingsHowLongResponses =>
      'Quanto tempo esperar pelas respostas do dispositivo:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Aumente esse valor se você vir erros de \"Conexão fechada\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Tempo limite de solicitação definido para segundos $seconds';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Defina o intervalo para atualização automática do estado:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalo de atualização definido para segundos $seconds';
  }

  @override
  String get settingsAboutTagline =>
      'Um controlador local limpo e privado para seus dispositivos Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch usa descoberta de rede local para localizar e controlar dispositivos sem dependências de nuvem.';

  @override
  String get settingsVersionValue => 'Versão 1.0.1';

  @override
  String get settingsProtocol => 'Protocolo: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Endereço multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Portas do dispositivo: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protocolo de controle: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Dica: certifique-se de que seu dispositivo esteja na mesma rede que seus dispositivos Wemo e que o multicast UDP não esteja bloqueado.';

  @override
  String get settingsDevicePaired =>
      'Dispositivo emparelhado! Atualizando lista de dispositivos...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds segundos por solicitação';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Atualizando cada ${seconds}s';
  }

  @override
  String get pairingTitle => 'Emparelhar novo dispositivo';

  @override
  String get pairingSetupTitle => 'Configure seu dispositivo Wemo';

  @override
  String get pairingBeforeBegin =>
      'Antes de começar, certifique-se de que seu dispositivo Wemo esteja no modo de configuração:';

  @override
  String get pairingPlugInTitle => 'Conecte seu dispositivo Wemo';

  @override
  String get pairingPlugInBody =>
      'Conecte-o à energia e espere que ele inicialize.';

  @override
  String get pairingBlinkingLedTitle => 'Procure o LED piscando';

  @override
  String get pairingBlinkingLedBody =>
      'Um LED piscando indica que o dispositivo está no modo de configuração.';

  @override
  String get pairingCheckWifiTitle => 'Verifique a rede WiFi';

  @override
  String get pairingCheckWifiBody =>
      'O dispositivo transmitirá uma rede chamada \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Se o LED estiver sólido, segure o botão reset por 5 segundos para entrar no modo de configuração.';

  @override
  String get pairingStart => 'Iniciar o emparelhamento';

  @override
  String get pairingConnectWifiTitle => 'Conecte ao dispositivo WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Abra as configurações WiFi do seu telefone e conecte-se à rede que começa com “WeMo”.';

  @override
  String get pairingCurrentNetwork => 'Rede atual';

  @override
  String get pairingConnectedToDevice => 'Conectado ao dispositivo Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Abra as configurações do WiFi';

  @override
  String get pairingConnectedButton => 'Eu conectei';

  @override
  String get pairingLookingForDevice => 'Procurando seu dispositivo Wemo...';

  @override
  String get pairingManualIpPrompt => 'Ou insira o dispositivo IP manualmente:';

  @override
  String get pairingDeviceIp => 'Endereço do dispositivo IP';

  @override
  String get pairingConnectToIp => 'Conecte-se ao IP';

  @override
  String get pairingSelectHomeWifi => 'Selecione sua rede doméstica WiFi:';

  @override
  String get pairingRefreshNetworks => 'Atualizar redes';

  @override
  String get pairingIosScanLimitation =>
      'O iOS proíbe estritamente que aplicativos de terceiros procurem redes Wi-Fi próximas. Pode ser necessário inserir a rede SSID manualmente.';

  @override
  String get pairingNoNetworks => 'Nenhuma rede encontrada';

  @override
  String get pairingScanAgain => 'Digitalizar novamente';

  @override
  String get pairingWifiPassword => 'Senha WiFi';

  @override
  String get pairingConnect => 'Conectar';

  @override
  String get pairingEnterNetworkManually => 'Entrar na rede manualmente';

  @override
  String get pairingEnterNetworkName => 'Digite o nome da rede:';

  @override
  String get pairingNetworkName => 'Nome da rede (SSID)';

  @override
  String get pairingUseNetwork => 'Use esta rede';

  @override
  String get pairingConfiguringDevice => 'Configurando dispositivo...';

  @override
  String get pairingConfiguringWait =>
      'Aguarde enquanto o dispositivo se conecta à sua rede.';

  @override
  String get pairingReconnectTitle => 'Reconecte-se à sua rede';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Seu dispositivo Wemo agora está conectado a \"$ssid\". Reconecte seu telefone à mesma rede.';
  }

  @override
  String get pairingBackOnHome => 'De volta à rede doméstica!';

  @override
  String get pairingReconnectedButton => 'Eu me reconectei';

  @override
  String get pairingFinalizingSetup => 'Finalizando a configuração...';

  @override
  String get pairingSetupComplete => 'Configuração concluída!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Conectado ao $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Seu dispositivo agora está configurado e aparecerá na tela inicial.';

  @override
  String get pairingSomethingWrong => 'Algo deu errado';

  @override
  String get pairingStartOver => 'Recomeçar';

  @override
  String get pairingErrorOpenWifi =>
      'Não foi possível abrir as configurações do WiFi. Por favor, abra-os manualmente.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Seu telefone ainda está conectado a \"$ssid\". Abra as configurações do WiFi, conecte-se à rede do dispositivo WeMo e tente novamente.';
  }

  @override
  String get pairingLoadingLooking => 'Procurando dispositivo...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Não foi possível encontrar o dispositivo WeMo em $ip. Certifique-se de que seu telefone esteja conectado à rede WeMo WiFi e tente novamente. Você também pode inserir o dispositivo IP manualmente.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Erro ao descobrir o dispositivo: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Conectando ao $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Nenhum dispositivo encontrado em $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Erro ao conectar ao $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Procurando redes...';

  @override
  String pairingErrorScanning(String error) {
    return 'Não foi possível verificar redes: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Selecione uma rede e digite a senha.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Enviando credenciais de rede...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Aguardando a conexão do dispositivo...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Falha ao configurar rede: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Senha muito curta. Verifique e tente novamente.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Falha ao conectar. Por favor verifique a senha.';

  @override
  String get pairingErrorConnectionTimeout =>
      'A conexão expirou. Por favor, tente novamente.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Erro ao finalizar a configuração: $error';
  }

  @override
  String get detailRefreshState => 'Estado de atualização';

  @override
  String get detailDeviceInfo => 'Informações do dispositivo';

  @override
  String get detailAdvanced => 'Avançado';

  @override
  String get detailWifiSetup => 'Configuração WiFi';

  @override
  String get detailReset => 'Redefinir';

  @override
  String get detailUnreachable =>
      'O dispositivo está inacessível. Verifique a conexão de rede.';

  @override
  String detailFailedToggle(String error) {
    return 'Falha ao alternar: $error';
  }

  @override
  String get detailDeviceInformation => 'Informações do dispositivo';

  @override
  String get detailPermissionScan =>
      'É necessária permissão para verificar redes WiFi.';

  @override
  String get detailScanFailedManual =>
      'Não foi possível verificar as redes. Insira o nome da rede manualmente.';

  @override
  String get detailEnterNetworkNameError =>
      'Insira ou selecione um nome de rede';

  @override
  String get detailEnterPasswordError => 'Por favor insira a senha da rede';

  @override
  String get detailWifiSuccess => 'WiFi configurado com sucesso!';

  @override
  String get detailScanNetworks => 'Procure redes';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configure a rede WiFi para \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Redes disponíveis';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'O iOS proíbe estritamente que aplicativos de terceiros procurem redes Wi-Fi próximas. Insira o nome da sua rede manualmente abaixo.';

  @override
  String get detailTapRefreshScan => 'Toque em atualizar para procurar redes';

  @override
  String get detailEnterNetworkBelow => 'Digite o nome da sua rede abaixo';

  @override
  String get detailNetworkCredentials => 'Credenciais de rede';

  @override
  String get detailConnecting => 'Conectando à rede...';

  @override
  String get detailConnected => 'Conectado com sucesso!';

  @override
  String get detailPasswordShort => 'A senha é muito curta';

  @override
  String get detailAuthenticationFailed =>
      'Falha na autenticação - verifique a senha';

  @override
  String get detailConnectionFailed => 'Falha na conexão';

  @override
  String get detailSelectReset => 'Selecione o que deseja redefinir';

  @override
  String get detailResetSchedulesWarning =>
      '• Todas as programações e regras de automação serão excluídas';

  @override
  String get detailResetWifiWarning =>
      '• As configurações do WiFi serão apagadas';

  @override
  String get detailSetupAgainWarning =>
      '• Você precisará configurar o dispositivo novamente';

  @override
  String get detailUnreachableWarning =>
      '• O dispositivo pode ficar temporariamente inacessível';

  @override
  String get detailConfirmReset => 'Confirmar redefinição';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Tem certeza de que deseja redefinir \"$device\"?';
  }

  @override
  String get detailThisWill => 'Isto irá:';

  @override
  String get detailCannotUndo => 'Esta ação não pode ser desfeita.';

  @override
  String get detailYesReset => 'Sim, redefinir';

  @override
  String get detailResetSuccess => 'Dispositivo redefinido com sucesso';

  @override
  String get detailResetRemote => 'O dispositivo será redefinido remotamente';

  @override
  String get detailResetFailed => 'Falha na redefinição';

  @override
  String get detailFactoryReset => 'Redefinição de fábrica';

  @override
  String get detailFactoryResetWarning =>
      'Isso apagará TODAS as configurações e restaurará o dispositivo aos padrões de fábrica. Você precisará configurar o dispositivo novamente.\n\nEsta ação não pode ser desfeita.';

  @override
  String get detailFactoryResetInitiated => 'Redefinição de fábrica iniciada';

  @override
  String get detailResetDevice => 'Redefinir dispositivo';

  @override
  String detailResetOptionsFor(String device) {
    return 'Opções de redefinição para \"$device\"';
  }

  @override
  String get detailResetUserData => 'Redefinir dados do usuário';

  @override
  String get detailResetUserDataSubtitle => 'Limpa horários e regras';

  @override
  String get detailResetWifi => 'Redefinir configurações WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'O dispositivo precisará ser configurado novamente';

  @override
  String get widgetBrightness => 'Brilho';

  @override
  String get widgetEnergyStatistics => 'Estatísticas Energéticas';

  @override
  String get widgetCurrentPower => 'Potência Atual';

  @override
  String get widgetToday => 'Hoje';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'Na hora certa hoje';

  @override
  String get widgetTotalOnTime => 'Total dentro do prazo';

  @override
  String get widgetStandby => 'Espera';

  @override
  String get widgetUnknown => 'Desconhecido';

  @override
  String get widgetOpenNetwork => 'Rede aberta';

  @override
  String get widgetWepInsecure => 'WEP (inseguro)';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get errDeviceNotSupportAction =>
      'O dispositivo não suporta esta ação.';

  @override
  String get errInvalidArgs =>
      'Argumentos inválidos foram enviados ao dispositivo.';

  @override
  String get errActionFailed =>
      'O dispositivo não conseguiu executar a ação solicitada.';

  @override
  String get errInvalidValue => 'Um valor inválido foi fornecido.';

  @override
  String get errValueOutOfRange => 'O valor está fora do intervalo aceitável.';

  @override
  String get errFeatureNotAvailable =>
      'Este recurso não está disponível neste dispositivo.';

  @override
  String get errOutOfMemory =>
      'O dispositivo está sem memória. Tente novamente mais tarde.';

  @override
  String get errManualActionRequired =>
      'A ação manual é necessária no dispositivo.';

  @override
  String get errActionNotAuthorized => 'Esta ação não está autorizada.';

  @override
  String get errUnexpected =>
      'Ocorreu um erro inesperado. Por favor, tente novamente.';

  @override
  String get errDeviceUnreachableOffline =>
      'Não foi possível acessar o dispositivo. Pode estar offline ou em uma rede diferente.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'A solicitação expirou após tentativas do $attempts. O dispositivo pode estar off-line.';
  }

  @override
  String get errRequestTimedOut =>
      'A solicitação expirou. O dispositivo pode estar off-line.';

  @override
  String get errNoRouteToHost =>
      'Não é possível acessar o dispositivo. Verifique sua conexão WiFi.';

  @override
  String get errHostUnreachable =>
      'O dispositivo está inacessível. Certifique-se de que ele esteja ligado e conectado ao WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Não é possível comunicar com o dispositivo após tentativas do $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Erro de rede: não é possível comunicar com o dispositivo.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Esta ação não está autorizada no dispositivo.';

  @override
  String get errDeviceServiceNotFound =>
      'Serviço do dispositivo não encontrado. O dispositivo pode precisar de uma atualização de firmware.';

  @override
  String get errDeviceEncounteredError =>
      'O dispositivo encontrou um erro ao processar a solicitação.';

  @override
  String get errDeviceInternalError =>
      'O dispositivo retornou um erro interno.';

  @override
  String get errDeviceTempUnavailable =>
      'O dispositivo está temporariamente indisponível. Por favor, tente novamente.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'O dispositivo retornou um erro (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Falha ao $action no dispositivo.';
  }

  @override
  String get errDeviceReturnedError => 'O dispositivo retornou um erro.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'A operação do $operation expirou. Por favor, tente novamente.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'A operação expirou após segundos do $seconds.';
  }

  @override
  String get errOperationTimedOut =>
      'A operação expirou. Por favor, tente novamente.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Ative a permissão de rede local em Configurações para encontrar dispositivos.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Não é possível acessar a rede local. Ative a permissão de rede local em Configurações.';

  @override
  String get errCheckWifiConnection =>
      'Não foi possível descobrir dispositivos. Verifique sua conexão WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Descoberta interrompida. Dispositivo(s) $count encontrados.';
  }

  @override
  String get errNoDevicesFound =>
      'Nenhum dispositivo encontrado. Certifique-se de que os dispositivos estejam ligados e conectados à sua rede.';

  @override
  String get actionGetDeviceState => 'obter o estado do dispositivo';

  @override
  String get actionSetDeviceState => 'definir o estado do dispositivo';

  @override
  String get actionGetEnergyData => 'obter dados de energia';

  @override
  String get actionScanNetworks => 'procurar redes';

  @override
  String get actionConnectWifi => 'conectar a WiFi';

  @override
  String get actionCheckConnection => 'verifique o status da conexão';

  @override
  String get actionResetDevice => 'redefinir dispositivo';

  @override
  String get actionPerform => 'realizar ação';

  @override
  String get suggestTryRefreshing =>
      'Tente atualizar a lista de dispositivos ou verifique se o dispositivo está respondendo.';

  @override
  String get suggestEnsurePoweredOn =>
      'Certifique-se de que o dispositivo esteja ligado e conectado à rede WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Certifique-se de que seu telefone esteja conectado à mesma rede WiFi que seus dispositivos.';

  @override
  String get suggestCheckPhysical =>
      'Verifique se há botões ou interruptores no dispositivo físico que precisem de atenção.';

  @override
  String get suggestWaitAndTry => 'Espere um momento e tente novamente.';

  @override
  String get suggestDeviceBusy =>
      'O dispositivo pode estar ocupado. Tente novamente em alguns segundos.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonClose => 'Fechar';

  @override
  String get commonDone => 'Concluído';

  @override
  String get commonLater => 'Mais tarde';

  @override
  String get commonRefresh => 'Atualizar';

  @override
  String get commonTryAgain => 'Tente novamente';

  @override
  String get commonOpenSettings => 'Abra Configurações';

  @override
  String get commonGrant => 'Conceder';

  @override
  String get commonFix => 'Correção';

  @override
  String get commonOn => 'Ligado';

  @override
  String get commonOff => 'Desligado';

  @override
  String get commonOffline => 'Off-line';

  @override
  String get commonStatus => 'Estado';

  @override
  String get commonName => 'Nome';

  @override
  String get commonType => 'Tipo';

  @override
  String get commonModel => 'Modelo';

  @override
  String get commonManufacturer => 'Fabricante';

  @override
  String get commonSerial => 'Série';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Anfitrião';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Senha';

  @override
  String get commonUnknownWifi => 'Desconhecido Wi-Fi';

  @override
  String get commonNotConnected => 'Não conectado';

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
      other: 'Segundos $seconds',
      one: '1 segundo',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Interruptor inteligente';

  @override
  String get deviceTypeLightSwitch => 'Interruptor de luz';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Plugue de insights';

  @override
  String get deviceTypeMotionSensor => 'Sensor de movimento';

  @override
  String get deviceTypeMaker => 'Criador';

  @override
  String get deviceTypeBridge => 'Ponte';

  @override
  String get deviceTypeCoffeeMaker => 'Cafeteira';

  @override
  String get deviceTypeCrockpot => 'Panela elétrica';

  @override
  String get deviceTypeHumidifier => 'Umidificador';

  @override
  String get deviceTypeOutdoorPlug => 'Plugue externo';

  @override
  String get deviceTypeUnknown => 'Dispositivo desconhecido';

  @override
  String get pairingStepGetStarted => 'Comece';

  @override
  String get pairingStepConnectToDevice => 'Conectar ao dispositivo';

  @override
  String get pairingStepFindDevice => 'Encontrar dispositivo';

  @override
  String get pairingStepSelectNetwork => 'Selecione Rede';

  @override
  String get pairingStepConfiguring => 'Configurando';

  @override
  String get pairingStepReconnect => 'Reconectar';

  @override
  String get pairingStepFinalizing => 'Finalizando';

  @override
  String get pairingStepSuccess => 'Sucesso';

  @override
  String get pairingStepError => 'Erro';

  @override
  String get homeToggleDebug => 'Alternar modo de depuração';

  @override
  String get homeRefreshDevices => 'Atualizar dispositivos';

  @override
  String get homeSettings => 'Configurações';

  @override
  String get homeDismiss => 'Dispensar';

  @override
  String get homeDiscovering => 'Descobrindo dispositivos...';

  @override
  String get homeNoDevices => 'Nenhum dispositivo encontrado';

  @override
  String get homeScanDevices => 'Procurar dispositivos';

  @override
  String get homeLookingForMore => 'Procurando por mais dispositivos...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados',
      one: '1 dispositivo encontrado',
      zero: 'Nenhum dispositivo encontrado',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivos $count encontrados, verificando...',
      one: '1 dispositivo encontrado, verificando...',
      zero: 'Nenhum dispositivo encontrado, verificando...',
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
      'As informações de localização são usadas para encontrar os detalhes do seu Wi-Fi. O acesso à rede local permite controlar seus switches e dispositivos inteligentes.';

  @override
  String get homeDebugLog => 'Registro de depuração';

  @override
  String get homeClear => 'Limpar';

  @override
  String get homeDebugEmpty =>
      'Toque em atualizar para iniciar a descoberta e ver os registros...';

  @override
  String get homeProbeHint => 'IP:Porta (por exemplo, 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sondar';

  @override
  String get homeScanning => 'Digitalizando...';

  @override
  String get homeScanSubnet => 'Digitalizar toda a sub-rede (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plataforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsSectionNetwork => 'Rede';

  @override
  String get settingsSectionDeviceSetup => 'Configuração do dispositivo';

  @override
  String get settingsSectionDiscovery => 'Descoberta';

  @override
  String get settingsSectionAbout => 'Sobre';

  @override
  String get settingsSectionDebug => 'Depurar';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Permissão concedida! Nome WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Localização concedida, mas também é necessária permissão de rede local. Verifique as configurações.';

  @override
  String get settingsLocationRequired => 'Permissão de localização necessária';

  @override
  String get settingsLocationRequiredBody =>
      'Para exibir o nome da rede WiFi, o iOS requer permissão de localização.';

  @override
  String get settingsRequiredPermissions => 'Permissões necessárias:';

  @override
  String get settingsPermissionList =>
      '1. Serviços de localização (\"Durante o uso do aplicativo\")\n2. Rede local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: a descoberta de dispositivos funciona sem permissão de localização. Esta permissão é usada apenas para exibir o nome da sua rede WiFi.';

  @override
  String get settingsEnableLocation => 'Ativar localização nas configurações';

  @override
  String get settingsLocationDeniedBody =>
      'A permissão de localização foi negada. Você pode habilitá-lo nas configurações do sistema.';

  @override
  String get settingsStepsToEnable => 'Etapas para ativar:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Abra Configurações\n2. Vá até \"Bit Switch\"\n3. Toque em \"Localização\"\n4. Selecione \"Ao usar o aplicativo\"\n5. Volte a este aplicativo e toque no botão Atualizar';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: A permissão de localização só é necessária para exibir o nome WiFi. A descoberta de dispositivos funciona sem ele.';

  @override
  String get settingsAdditionalPermission => 'Permissão adicional necessária';

  @override
  String get settingsLocalNetworkBody =>
      'É necessária permissão de rede local para descobrir e controlar dispositivos Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Você tem permissão de localização, mas o nome WiFi ainda não está visível.';

  @override
  String get settingsPleaseEnable => 'Ative:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Vá para as configurações do iPhone\n2. Role para baixo até \"Bit Switch\"\n3. Habilite \"Rede Local\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'A permissão de rede local é necessária para descoberta de dispositivos e acesso ao nome WiFi no iOS.';

  @override
  String get settingsPairNewDevice => 'Emparelhar novo dispositivo';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configure um novo dispositivo Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Tempo limite de descoberta';

  @override
  String get settingsRequestTimeout => 'Solicitar tempo limite';

  @override
  String get settingsAutoRefresh => 'Atualização automática';

  @override
  String get settingsAutoRefreshOn =>
      'Ativado – os estados do dispositivo são atualizados automaticamente';

  @override
  String get settingsAutoRefreshOff =>
      'Desligado - Usar botão de atualização manual';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervalo de atualização automática';

  @override
  String get settingsAbout => 'Sobre Bit Switch';

  @override
  String get settingsVersion => 'Versão';

  @override
  String get settingsNetworkDiagnostics => 'Diagnóstico de rede';

  @override
  String get settingsShowDebug => 'Mostrar modo de depuração';

  @override
  String get settingsShowDebugSubtitle =>
      'Mostrar controles de depuração e diagnósticos de rede na tela inicial';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Mostrar ícone de depuração na tela inicial para solução de problemas';

  @override
  String get settingsCurrentNetwork => 'Rede atual';

  @override
  String get settingsNetworkAccessStatus => 'Status de acesso à rede';

  @override
  String get settingsNetworkAccessGranted =>
      'O acesso à rede local está disponível';

  @override
  String get settingsNetworkAccessMissing =>
      'Permissões adicionais podem ser necessárias';

  @override
  String get settingsChecking => 'Verificando...';

  @override
  String get settingsEnableLocalNetwork =>
      'Habilite a rede local nas configurações';

  @override
  String get settingsNotConnectedWifi => 'Não conectado ao WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Permissão necessária para visualizar';

  @override
  String get settingsAllPermissionsGranted => 'Todas as permissões concedidas';

  @override
  String get settingsLocalNetworkNeeded => 'Permissão de rede local necessária';

  @override
  String get settingsLocationNeeded => 'Permissão de localização necessária';

  @override
  String get settingsRefreshPermissions => 'Atualizar permissões';

  @override
  String get settingsAboutWifiPermission => 'Sobre a permissão de nome WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Seu nome WiFi ajuda a confirmar que seu telefone e os dispositivos Wemo estão na mesma rede.';

  @override
  String get settingsWifiPermissionIos =>
      'No iOS, a exibição do nome da rede WiFi requer permissão de localização.';

  @override
  String get settingsImportant => 'Importante:';

  @override
  String get settingsPrivacyNote =>
      '• Sua localização nunca é rastreada\n• Nenhum dado de localização é coletado ou armazenado';

  @override
  String get settingsWifiPermissionImportant =>
      '• A descoberta de dispositivos funciona SEM esta permissão\n• Isso só é necessário para mostrar o nome WiFi\n• Nenhum dado de localização é coletado ou armazenado';

  @override
  String get settingsGrantPermission => 'Conceder permissão';

  @override
  String get settingsHowLongScan => 'Quanto tempo para procurar dispositivos:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Tempo limite de descoberta definido para segundos $seconds';
  }

  @override
  String get settingsHowLongResponses =>
      'Quanto tempo esperar pelas respostas do dispositivo:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Aumente esse valor se você vir erros de \"Conexão fechada\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Tempo limite de solicitação definido para segundos $seconds';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Defina o intervalo para atualização automática do estado:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalo de atualização definido para segundos $seconds';
  }

  @override
  String get settingsAboutTagline =>
      'Um controlador local limpo e privado para seus dispositivos Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch usa descoberta de rede local para localizar e controlar dispositivos sem dependências de nuvem.';

  @override
  String get settingsVersionValue => 'Versão 1.0.1';

  @override
  String get settingsProtocol => 'Protocolo: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Endereço multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Portas do dispositivo: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protocolo de controle: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Dica: certifique-se de que seu dispositivo esteja na mesma rede que seus dispositivos Wemo e que o multicast UDP não esteja bloqueado.';

  @override
  String get settingsDevicePaired =>
      'Dispositivo emparelhado! Atualizando lista de dispositivos...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds segundos por solicitação';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Atualizando cada ${seconds}s';
  }

  @override
  String get pairingTitle => 'Emparelhar novo dispositivo';

  @override
  String get pairingSetupTitle => 'Configure seu dispositivo Wemo';

  @override
  String get pairingBeforeBegin =>
      'Antes de começar, certifique-se de que seu dispositivo Wemo esteja no modo de configuração:';

  @override
  String get pairingPlugInTitle => 'Conecte seu dispositivo Wemo';

  @override
  String get pairingPlugInBody =>
      'Conecte-o à energia e espere que ele inicialize.';

  @override
  String get pairingBlinkingLedTitle => 'Procure o LED piscando';

  @override
  String get pairingBlinkingLedBody =>
      'Um LED piscando indica que o dispositivo está no modo de configuração.';

  @override
  String get pairingCheckWifiTitle => 'Verifique a rede WiFi';

  @override
  String get pairingCheckWifiBody =>
      'O dispositivo transmitirá uma rede chamada \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Se o LED estiver sólido, segure o botão reset por 5 segundos para entrar no modo de configuração.';

  @override
  String get pairingStart => 'Iniciar o emparelhamento';

  @override
  String get pairingConnectWifiTitle => 'Conecte ao dispositivo WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Abra as configurações WiFi do seu telefone e conecte-se à rede que começa com “WeMo”.';

  @override
  String get pairingCurrentNetwork => 'Rede atual';

  @override
  String get pairingConnectedToDevice => 'Conectado ao dispositivo Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Abra as configurações do WiFi';

  @override
  String get pairingConnectedButton => 'Eu conectei';

  @override
  String get pairingLookingForDevice => 'Procurando seu dispositivo Wemo...';

  @override
  String get pairingManualIpPrompt => 'Ou insira o dispositivo IP manualmente:';

  @override
  String get pairingDeviceIp => 'Endereço do dispositivo IP';

  @override
  String get pairingConnectToIp => 'Conecte-se ao IP';

  @override
  String get pairingSelectHomeWifi => 'Selecione sua rede doméstica WiFi:';

  @override
  String get pairingRefreshNetworks => 'Atualizar redes';

  @override
  String get pairingIosScanLimitation =>
      'O iOS proíbe estritamente que aplicativos de terceiros procurem redes Wi-Fi próximas. Pode ser necessário inserir a rede SSID manualmente.';

  @override
  String get pairingNoNetworks => 'Nenhuma rede encontrada';

  @override
  String get pairingScanAgain => 'Digitalizar novamente';

  @override
  String get pairingWifiPassword => 'Senha WiFi';

  @override
  String get pairingConnect => 'Conectar';

  @override
  String get pairingEnterNetworkManually => 'Entrar na rede manualmente';

  @override
  String get pairingEnterNetworkName => 'Digite o nome da rede:';

  @override
  String get pairingNetworkName => 'Nome da rede (SSID)';

  @override
  String get pairingUseNetwork => 'Use esta rede';

  @override
  String get pairingConfiguringDevice => 'Configurando dispositivo...';

  @override
  String get pairingConfiguringWait =>
      'Aguarde enquanto o dispositivo se conecta à sua rede.';

  @override
  String get pairingReconnectTitle => 'Reconecte-se à sua rede';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Seu dispositivo Wemo agora está conectado a \"$ssid\". Reconecte seu telefone à mesma rede.';
  }

  @override
  String get pairingBackOnHome => 'De volta à rede doméstica!';

  @override
  String get pairingReconnectedButton => 'Eu me reconectei';

  @override
  String get pairingFinalizingSetup => 'Finalizando a configuração...';

  @override
  String get pairingSetupComplete => 'Configuração concluída!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Conectado ao $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Seu dispositivo agora está configurado e aparecerá na tela inicial.';

  @override
  String get pairingSomethingWrong => 'Algo deu errado';

  @override
  String get pairingStartOver => 'Recomeçar';

  @override
  String get pairingErrorOpenWifi =>
      'Não foi possível abrir as configurações do WiFi. Por favor, abra-os manualmente.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Seu telefone ainda está conectado a \"$ssid\". Abra as configurações do WiFi, conecte-se à rede do dispositivo WeMo e tente novamente.';
  }

  @override
  String get pairingLoadingLooking => 'Procurando dispositivo...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Não foi possível encontrar o dispositivo WeMo em $ip. Certifique-se de que seu telefone esteja conectado à rede WeMo WiFi e tente novamente. Você também pode inserir o dispositivo IP manualmente.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Erro ao descobrir o dispositivo: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Conectando ao $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Nenhum dispositivo encontrado em $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Erro ao conectar ao $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Procurando redes...';

  @override
  String pairingErrorScanning(String error) {
    return 'Não foi possível verificar redes: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Selecione uma rede e digite a senha.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Enviando credenciais de rede...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Aguardando a conexão do dispositivo...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Falha ao configurar rede: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Senha muito curta. Verifique e tente novamente.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Falha ao conectar. Por favor verifique a senha.';

  @override
  String get pairingErrorConnectionTimeout =>
      'A conexão expirou. Por favor, tente novamente.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Erro ao finalizar a configuração: $error';
  }

  @override
  String get detailRefreshState => 'Estado de atualização';

  @override
  String get detailDeviceInfo => 'Informações do dispositivo';

  @override
  String get detailAdvanced => 'Avançado';

  @override
  String get detailWifiSetup => 'Configuração WiFi';

  @override
  String get detailReset => 'Redefinir';

  @override
  String get detailUnreachable =>
      'O dispositivo está inacessível. Verifique a conexão de rede.';

  @override
  String detailFailedToggle(String error) {
    return 'Falha ao alternar: $error';
  }

  @override
  String get detailDeviceInformation => 'Informações do dispositivo';

  @override
  String get detailPermissionScan =>
      'É necessária permissão para verificar redes WiFi.';

  @override
  String get detailScanFailedManual =>
      'Não foi possível verificar as redes. Insira o nome da rede manualmente.';

  @override
  String get detailEnterNetworkNameError =>
      'Insira ou selecione um nome de rede';

  @override
  String get detailEnterPasswordError => 'Por favor insira a senha da rede';

  @override
  String get detailWifiSuccess => 'WiFi configurado com sucesso!';

  @override
  String get detailScanNetworks => 'Procure redes';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configure a rede WiFi para \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Redes disponíveis';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'O iOS proíbe estritamente que aplicativos de terceiros procurem redes Wi-Fi próximas. Insira o nome da sua rede manualmente abaixo.';

  @override
  String get detailTapRefreshScan => 'Toque em atualizar para procurar redes';

  @override
  String get detailEnterNetworkBelow => 'Digite o nome da sua rede abaixo';

  @override
  String get detailNetworkCredentials => 'Credenciais de rede';

  @override
  String get detailConnecting => 'Conectando à rede...';

  @override
  String get detailConnected => 'Conectado com sucesso!';

  @override
  String get detailPasswordShort => 'A senha é muito curta';

  @override
  String get detailAuthenticationFailed =>
      'Falha na autenticação - verifique a senha';

  @override
  String get detailConnectionFailed => 'Falha na conexão';

  @override
  String get detailSelectReset => 'Selecione o que deseja redefinir';

  @override
  String get detailResetSchedulesWarning =>
      '• Todas as programações e regras de automação serão excluídas';

  @override
  String get detailResetWifiWarning =>
      '• As configurações do WiFi serão apagadas';

  @override
  String get detailSetupAgainWarning =>
      '• Você precisará configurar o dispositivo novamente';

  @override
  String get detailUnreachableWarning =>
      '• O dispositivo pode ficar temporariamente inacessível';

  @override
  String get detailConfirmReset => 'Confirmar redefinição';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Tem certeza de que deseja redefinir \"$device\"?';
  }

  @override
  String get detailThisWill => 'Isto irá:';

  @override
  String get detailCannotUndo => 'Esta ação não pode ser desfeita.';

  @override
  String get detailYesReset => 'Sim, redefinir';

  @override
  String get detailResetSuccess => 'Dispositivo redefinido com sucesso';

  @override
  String get detailResetRemote => 'O dispositivo será redefinido remotamente';

  @override
  String get detailResetFailed => 'Falha na redefinição';

  @override
  String get detailFactoryReset => 'Redefinição de fábrica';

  @override
  String get detailFactoryResetWarning =>
      'Isso apagará TODAS as configurações e restaurará o dispositivo aos padrões de fábrica. Você precisará configurar o dispositivo novamente.\n\nEsta ação não pode ser desfeita.';

  @override
  String get detailFactoryResetInitiated => 'Redefinição de fábrica iniciada';

  @override
  String get detailResetDevice => 'Redefinir dispositivo';

  @override
  String detailResetOptionsFor(String device) {
    return 'Opções de redefinição para \"$device\"';
  }

  @override
  String get detailResetUserData => 'Redefinir dados do usuário';

  @override
  String get detailResetUserDataSubtitle => 'Limpa horários e regras';

  @override
  String get detailResetWifi => 'Redefinir configurações WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'O dispositivo precisará ser configurado novamente';

  @override
  String get widgetBrightness => 'Brilho';

  @override
  String get widgetEnergyStatistics => 'Estatísticas Energéticas';

  @override
  String get widgetCurrentPower => 'Potência Atual';

  @override
  String get widgetToday => 'Hoje';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'Na hora certa hoje';

  @override
  String get widgetTotalOnTime => 'Total dentro do prazo';

  @override
  String get widgetStandby => 'Espera';

  @override
  String get widgetUnknown => 'Desconhecido';

  @override
  String get widgetOpenNetwork => 'Rede aberta';

  @override
  String get widgetWepInsecure => 'WEP (inseguro)';
}
