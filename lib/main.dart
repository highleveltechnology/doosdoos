
import 'package:country_picker/country_picker.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_themes.dart';
import 'package:doos/src/app/bloc/app_bloc.dart';
import 'package:doos/src/core/local/locale_constants.dart';
import 'package:doos/src/core/navigation/routes/AppRouter.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/preferences/Prefs.dart';
import 'package:doos/src/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'src/injector.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

String? version;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  await configureDependencies();
  var language = await GetIt.instance.get<Prefs>().languageString;
  var theme = await GetIt.instance.get<Prefs>().themString;
  var order = await GetIt.instance.get<Prefs>().userOrderString;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
  ));
  // try {
  //   FirebaseNotificationUserClass.initFirebase();
  // } catch (e) {}
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AppBloc>(
          create: (context) => AppBloc(
              prefs: getIt(),
              hasOrder: order.isNotEmpty,
              languageCode: language,
              modeThem: theme.isEmpty ? "light" : theme)),
    ],
    child: Builder(builder: (context) {
      return MyApp();
    }),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppBloc? bloc;

  @override
  Widget build(BuildContext context) {
    // getIt<Prefs>().clear();

    return ScreenUtilInit(
      designSize: const Size(375, 913),
      useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? child) =>
          BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) =>
            previous.modeThem != current.modeThem ||
            previous.languageCode != current.languageCode ||
            previous.connected != current.connected,
        builder: (context, state) {
          AppColors.of(context);
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: AppColors.current.primaryTextColor, // status bar color
          ));
          if (state is AppInitial || state is ChangeSettings) {
            return MaterialApp.router(
             routerConfig: AppRoutes.config,
              localeResolutionCallback: (Locale? locale,
                      Iterable<Locale> supportedLocales) =>
                  Locale(state.languageCode ?? LocaleConstants.defaultLocale),
              locale:
                  Locale(state.languageCode ?? LocaleConstants.defaultLocale)
              // Locale(state.languageCode ?? LocaleConstants.defaultLocale),
              // Locale( LocaleConstants.defaultLocale)
              ,
              supportedLocales: S.delegate.supportedLocales,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                CountryLocalizations.delegate,
              ],
              debugShowCheckedModeBanner: false,
              theme: bloc!.modeThem == "light"
                  ? mainTheme
                  : bloc!.modeThem == "second"
                      ? lightTheme
                      : darkTheme,
              themeMode:
                  bloc!.modeThem == "dark" ? ThemeMode.dark : ThemeMode.light,
              color: Colors.white,
              title: 'Doos Doos',            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    bloc = context.read<AppBloc>();
    bloc?.add(InitEvent());
  }
}
