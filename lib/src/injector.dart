import 'package:doos/src/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// ignore: unused_import

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
