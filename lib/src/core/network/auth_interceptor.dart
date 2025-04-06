import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../preferences/Prefs.dart';

@Injectable()
class AuthInterceptor extends Interceptor {
  final Prefs _prefs;

  AuthInterceptor(this._prefs, );

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    bool isLogin = await _prefs.isLoginBool;
    if (isLogin) {
      if (response.statusCode == 406 || response.statusCode == 401) {
        // _prefs.clear();
        // _appRouter.push(const AuthContainer());
        // _appRouter.popUntil(
        //     (route) => route.settings.name == const AuthContainer().routeName);
      }
    }

    return handler.next(response);
  }
}
