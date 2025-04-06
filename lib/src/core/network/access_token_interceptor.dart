import 'package:dio/dio.dart';
import 'package:doos/main.dart';
import 'package:injectable/injectable.dart';
import '../preferences/Prefs.dart';

@Injectable()
class AccessTokenInterceptor extends Interceptor {
  AccessTokenInterceptor(this._appPreferences);

  final Prefs _appPreferences;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _appPreferences.tokenString;
    final language = await _appPreferences.languageString;

    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      options.headers['version'] = version ?? '';
      // print(options.headers);
    }
    if (language.isNotEmpty) {
      options.headers['X-Language'] = language;
    }

    handler.next(options);
  }
}
