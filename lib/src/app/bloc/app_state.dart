part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  final String? languageCode;
  final String? modeThem;
  final bool? isLogin;
  final bool? connected;
  final bool? vpnStatus; // Add VPN status
  final bool? isDialogOpened;
  const AppState({
    this.languageCode,
    this.modeThem,
    this.isLogin,
    this.connected,
    this.vpnStatus,
    this.isDialogOpened,
  });

  @override
  List<Object> get props => [
        languageCode ?? LocaleConstants.defaultLocale,
        modeThem ?? "light",
        isLogin ?? false,
        connected ?? false,
        vpnStatus ?? false,
        isDialogOpened ?? false,
      ];
}

class AppInitial extends AppState {
  const AppInitial(String languageCode, String modeThem)
      : super(languageCode: languageCode, modeThem: modeThem);
}

class AppLogin extends AppState {
  const AppLogin(String languageCode, String modeThem, bool isLogin)
      : super(languageCode: languageCode, modeThem: modeThem, isLogin: isLogin);
}

class ChangeSettings extends AppState {
  const ChangeSettings(String languageCode, String modeThem, bool isLogin,
      bool connectedVal, bool vpnStatus, bool isDialogOpened)
      : super(
            languageCode: 'en',
            modeThem: modeThem,
            isLogin: isLogin,
            connected: connectedVal,
            vpnStatus: vpnStatus,
            isDialogOpened: isDialogOpened);
}
