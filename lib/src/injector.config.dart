// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:doos/features/home/persentation/cubit/home_cubit.dart' as _i317;
import 'package:doos/features/main_nav/persentation/cubit/main_nav_cubit.dart'
    as _i287;
import 'package:doos/src/app/bloc/app_bloc.dart' as _i959;
import 'package:doos/src/core/firebase_notification/firebase_notification.dart'
    as _i138;
import 'package:doos/src/core/network/access_token_interceptor.dart' as _i732;
import 'package:doos/src/core/network/auth_interceptor.dart' as _i34;
import 'package:doos/src/core/network/network_interceptor.dart' as _i556;
import 'package:doos/src/core/preferences/PreferencesHelper.dart' as _i406;
import 'package:doos/src/core/preferences/Prefs.dart' as _i610;
import 'package:doos/src/core/services/location_service.dart' as _i584;
import 'package:doos/src/di/AppModule.dart' as _i83;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i287.MainNavCubit>(() => _i287.MainNavCubit());
    gh.factory<_i138.FirebaseNotificationUserClass>(
      () => _i138.FirebaseNotificationUserClass(),
    );
    gh.factory<_i584.LocationService>(() => _i584.LocationService());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i406.PreferencesHelper>(
      () => appModule.getPreferencesHelper(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<String>(
      () => appModule.currentPlatform,
      instanceName: 'currentPlatform',
    );
    gh.factory<_i317.HomeCubit>(
      () => _i317.HomeCubit(gh<_i584.LocationService>()),
    );
    gh.factory<_i610.Prefs>(() => _i610.Prefs(gh<_i406.PreferencesHelper>()));
    gh.factory<_i959.AppBloc>(
      () => _i959.AppBloc(
        prefs: gh<_i610.Prefs>(),
        languageCode: gh<String>(),
        modeThem: gh<String>(),
        hasOrder: gh<bool>(),
      ),
    );
    gh.factory<_i34.AuthInterceptor>(
      () => _i34.AuthInterceptor(gh<_i610.Prefs>()),
    );
    gh.factory<_i556.NetworkInterceptor>(
      () => _i556.NetworkInterceptor(gh<_i610.Prefs>()),
    );
    gh.factory<_i732.AccessTokenInterceptor>(
      () => _i732.AccessTokenInterceptor(gh<_i610.Prefs>()),
    );
    await gh.singletonAsync<String>(
      () => appModule.getLanguageCode(gh<_i610.Prefs>()),
      instanceName: 'languageCode',
      preResolve: true,
    );
    await gh.factoryAsync<_i361.Dio>(
      () => appModule.dio(
        gh<String>(instanceName: 'languageCode'),
        gh<_i732.AccessTokenInterceptor>(),
        gh<_i556.NetworkInterceptor>(),
        gh<_i34.AuthInterceptor>(),
      ),
      preResolve: true,
    );
    return this;
  }
}

class _$AppModule extends _i83.AppModule {}
