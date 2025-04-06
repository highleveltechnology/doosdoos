import 'dart:async';
import 'dart:convert';
import 'package:doos/src/core/local/locale_constants.dart';
import 'package:doos/src/core/preferences/Prefs.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../resource/styles/app_themes.dart';

part 'app_event.dart';

part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final Prefs prefs;

  // final InitUseCase _initUseCase;
  // final HomeUseCase _homeUseCase;
  // final GetAppSettingUseCase _appSettingUseCase;
  // final HelpCenterDataUseCase _helpCenterDataUseCase;
  // final GetProgressUsecase _getProgressUsecase;
  bool isLogin = false;
  String languageCode = LocaleConstants.defaultLocale;
  String modeThem = "light";
  // InitResponse? initResponse;
  bool showTutorial = true;
  bool isVpnConnected = false; // Track VPN status
  bool isDialogOpened = false;

  StreamSubscription? vpnStreamSubscription;

  String? name;

  String? email;

  String? phone;

  String? userMode = "user";

  String? password;

  bool hasOrder;
  // AppSetting? appSetting;
  // HelpCenterData? helpCenterData;
  // CourseProgressResponse? courseProgressResponse;

//  List<Categories>? categories;
  AppBloc(
      {required this.prefs,
      required this.languageCode,
      required this.modeThem,
      required this.hasOrder})
      : super(AppInitial(languageCode, modeThem)) {
    on<InitEvent>(_init);
    on<LogUserEvent>(_logUser);
    on<LanguageEvent>(_changeLanguage);
    on<ThemEvent>(_changeThem);
    // on<ConnectionEvent>(_changeStatus);
  }

  bool isDeviceConnected = false;
  StreamSubscription? internetConnectionStreamSubscription;
  void _init(InitEvent event, Emitter<AppState> emit) async {
    _updateThemeSetting(modeThem);
    await InternetConnectionChecker.createInstance().connectionStatus.then(
      (value) {
        if (value == InternetConnectionStatus.connected) {
          isDeviceConnected = true;
        }
      },
    );

    emit(ChangeSettings(languageCode, modeThem, isLogin, isDeviceConnected,
        isVpnConnected, isDialogOpened));
    // monitorInternetConnection();
    await prefs.isLoginBool.then((value) => isLogin = value);
    await prefs.userModeString.then((value) {
      if (value.isNotEmpty) {
        userMode = value;
      }
    });
    // _appInit();
    await prefs.isTutorialBool.then((value) => showTutorial = value);
    print("showTutorial app bloc");
    print(showTutorial);
    await prefs.languageString.then((value) {
      if (value.isNotEmpty) {
        languageCode = value;
      }
    });
    await prefs.phoneString.then((value) => phone = value);
    await prefs.themString.then((value) {
      if (value.isNotEmpty) {
        modeThem = value;
      }
    });
    // await initData();
    if (isLogin) {
      getUserData();
    }
  }

  Future<void> login(bool val) async {
    await prefs.setIsLoginBool(val);
  }

 

  void getUserData() async {
    prefs.nameString.then((value) => name = value);
    prefs.userModeString.then((value) => userMode = value);
    prefs.emailString.then((value) => email = value);
    prefs.passwordString.then((value) => password = value);
    String user = await prefs.userDataString;
  }

  Future<void> clear() async {
    await prefs.clear();
  }

  void _logUser(LogUserEvent event, Emitter<AppState> emit) async {
    isLogin = event.isLogin;
    if (!event.isLogin) {
      // emit(AppLogin(languageCode, modeThem, true));
      await prefs.clear();
      // emit(AppLogin(languageCode, modeThem, false));
    } else {
      await prefs.setIsLoginBool(true);
      getUserData();
    }
  }

  void _changeLanguage(LanguageEvent event, Emitter<AppState> emit) async {
    languageCode = event.languageCode;
    await prefs.setLanguageString(event.languageCode);
    emit(ChangeSettings(languageCode, modeThem, isLogin, isDeviceConnected,
        isVpnConnected, isDialogOpened));
  }

  void _changeThem(ThemEvent event, Emitter<AppState> emit) async {
    modeThem = event.them;
    await prefs.setThemString(event.them);
    _updateThemeSetting(modeThem);
    emit(ChangeSettings(languageCode, modeThem, isLogin, isDeviceConnected,
        isVpnConnected, isDialogOpened));
  }

  void _updateThemeSetting(String theme) {
    AppThemeSetting.currentAppThemeType = modeThem == 'light'
        ? AppThemeType.light
        : modeThem == 'dark'
            ? AppThemeType.dark
            : AppThemeType.second;
  }

  // Don't forget to dispose the subscription when the bloc is closed
  @override
  Future<void> close() {
    vpnStreamSubscription?.cancel();
    return super.close();
  }
}
