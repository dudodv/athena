part of 'apps_bloc.dart';

enum RemoteKey {
  back,
  home,
  menu,
  up,
  down,
  left,
  right,
  enter,
  exit;

  String get key => name.toUpperCase();
}

@freezed
class AppsEvent with _$AppsEvent {
  const factory AppsEvent.started() = _Started;
  const factory AppsEvent.getAppList() = _GetAppList;
  const factory AppsEvent.launchApp(String appId) = _LaunchApp;
  const factory AppsEvent.closeApp(String appId) = _CloseApp;
  const factory AppsEvent.addDevice(CustomDevice device) = _AddDevice;
  const factory AppsEvent.getDeviceList() = _GetDeviceList;
  const factory AppsEvent.selectDevice(String deviceName) = _SelectDevice;
  const factory AppsEvent.removeDevice(String deviceName) = _RemoveDevice;
  const factory AppsEvent.activateDevMode() = _ActivateDevMode;
  const factory AppsEvent.reloadHomeApp() = _ReloadHomeApp;
  const factory AppsEvent.launchSocketApp() = _OpenSocketApp;
  const factory AppsEvent.launchNewSocketApp() = _OpenNewSocketApp;
  const factory AppsEvent.factoryReset() = _FactoryReset;
  const factory AppsEvent.rebootDevice() = _RebootDevice;
  const factory AppsEvent.sendKey(RemoteKey remoteKey) = _SendKey;
  const factory AppsEvent.changeServiceCountry(CountryData countryData) =
      _ChangeCountryCode;
  const factory AppsEvent.changeLanguage(

      /// example: en-GB ko-KG ar-SA
      String language) = _ChangeLanguage;
  const factory AppsEvent.getForegroundAppName() = _GetForegroundAppName;
  const factory AppsEvent.captureScreen() = _CaptureScreen;
  const factory AppsEvent.changeTVMode(TVMode mode) = _ChangeTVMode;
  const factory AppsEvent.acceptUserAgrements() = _AcceptUserAgreements;
  const factory AppsEvent.turnOnScreenSaver() = _TurnOnScreenSaver;
  const factory AppsEvent.updateDNS() = _UpdateDNS;
  const factory AppsEvent.getSoftwareVersion() = _GetSoftwareVersion;
  const factory AppsEvent.switchAudioGuidance(bool turnOn) =
      _SwitchAudioGuidance;
  const factory AppsEvent.changeCountry(CountryData country) = _ChangeCountry;
}
