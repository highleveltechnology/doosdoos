import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import '../navigation/routes/AppRouter.dart';
import '../preferences/Prefs.dart';

@Injectable()
class NetworkInterceptor extends Interceptor {
  final Prefs _prefs;


  NetworkInterceptor(this._prefs,);

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError) {
      // _appRouter.push(InternetRoute());
      // _appRouter.popUntil(
      //     (route) => route.settings.name == const InternetRoute().routeName);
    }
    return handler.next(err);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 406) {
      // _prefs.clear();
      // _appRouter.push(const AuthContainer());
      // _appRouter.popUntil(
      //     (route) => route.settings.name == const AuthContainer().routeName);
    }
    return handler.next(response);
  }
}
