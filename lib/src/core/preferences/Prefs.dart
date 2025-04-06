import 'package:injectable/injectable.dart';
import 'PreferencesHelper.dart';
import 'constants.dart';

@injectable
class Prefs {
  final PreferencesHelper preferencesHelper;

  Prefs(this.preferencesHelper);

  Future<String> get nameString => preferencesHelper.getString(name);

  Future setNameString(String value) =>
      preferencesHelper.setString(name, value);

  Future<String?> get bannersFetch =>
      preferencesHelper.getString('bannersFetch');

  Future setBannersFetchString(String value) =>
      preferencesHelper.setString('bannersFetch', value);

  Future<String?> get slidesFetch => preferencesHelper.getString('slidesFetch');

  Future setSlidesFetchString(String value) =>
      preferencesHelper.setString('slidesFetch', value);

  Future<String?> get catFetch => preferencesHelper.getString('catFetch');

  Future setCatFetchString(String value) =>
      preferencesHelper.setString('catFetch', value);

  Future<String?> get appSettingFetch =>
      preferencesHelper.getString('appSettingFetch');

  Future setAppSettingFetchString(String value) =>
      preferencesHelper.setString('appSettingFetch', value);

  Future<String?> get contactFetch =>
      preferencesHelper.getString('contactFetch');

  Future setContactFetchString(String value) =>
      preferencesHelper.setString('contactFetch', value);

  Future<int?> get dayFetch => preferencesHelper.getInt('dayFetch');

  Future setDayFetchString(int value) =>
      preferencesHelper.setInt('dayFetch', value);

  Future<int?> get dayFetchCat => preferencesHelper.getInt('dayFetchCat');
  Future setDayFetchCatString(int value) =>
      preferencesHelper.setInt('dayFetchCat', value);

  Future<int?> get dayFetchApp => preferencesHelper.getInt('dayFetchApp');

  Future setDayFetchAppString(int value) =>
      preferencesHelper.setInt('dayFetchApp', value);

  Future<String> get emailString => preferencesHelper.getString(email);

  Future setEmailString(String value) =>
      preferencesHelper.setString(email, value);

  Future<String> get userModeString => preferencesHelper.getString(userMode);

  Future setUserModeString(String value) =>
      preferencesHelper.setString(userMode, value);

  Future<String> get phoneString => preferencesHelper.getString(phone);

  Future setPhoneString(String value) =>
      preferencesHelper.setString(phone, value);

  Future<String> get passwordString => preferencesHelper.getString(password);

  Future setPasswordString(String value) =>
      preferencesHelper.setString(password, value);

  Future<String> get languageString =>
      preferencesHelper.getStringLanguage(language);

  Future setLanguageString(String value) =>
      preferencesHelper.setString(language, value);

  Future<String> get themString => preferencesHelper.getString(them);

  Future setThemString(String value) =>
      preferencesHelper.setString(them, value);

  Future<bool> get isLoginBool => preferencesHelper.getBool(isLogin);

  Future setIsLoginBool(bool value) =>
      preferencesHelper.setBool(isLogin, value);

  Future<bool> get isTutorialBool => preferencesHelper.getBool(showTutorial);

  Future setTutorialBool(bool value) =>
      preferencesHelper.setBool(showTutorial, value);

  Future<bool> get isRememberBool => preferencesHelper.getBool(remember);

  Future setRememberBool(bool value) =>
      preferencesHelper.setBool(remember, value);

  Future<String> get tokenString => preferencesHelper.getString(token);

  Future setTokenString(String value) =>
      preferencesHelper.setString(token, value);

  Future<String> get userDataString => preferencesHelper.getString(userData);

  Future setUserData(String value) =>
      preferencesHelper.setString(userData, value);

  Future<List<String>> get userOrderString =>
      preferencesHelper.getStringList(userOrder);

  Future setUserOrder(List<String> value) =>
      preferencesHelper.setStringList(userOrder, value);

  Future<String> get initDataString => preferencesHelper.getString(init);

  Future setInitData(String value) => preferencesHelper.setString(init, value);

  Future<void> clear() async {
    await Future.wait(<Future>[
      preferencesHelper.prefs.remove(userData),
      preferencesHelper.prefs.remove(token),
      preferencesHelper.prefs.remove(isLogin),
      preferencesHelper.prefs.remove(userOrder),
    ]);
  }

  Future<void> clearCat() async {
    preferencesHelper.prefs.remove("catFetch");
    preferencesHelper.prefs.remove("dayFetchCat");
  }
}
