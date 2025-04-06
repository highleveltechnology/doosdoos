import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../navigation/routes/AppRouter.dart';

// const AndroidNotificationChannel channelUser = AndroidNotificationChannel(
//     'main.moeen_provider.app.high', // id
//     'High Importance Notifications', // title
//     importance: Importance.max,
//     // sound: RawResourceAndroidNotificationSound('alarm'),
//     playSound: true);

// var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

@Injectable()
class FirebaseNotificationUserClass {
  // static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static final FirebaseMessaging _messaging =
      GetIt.instance.get<FirebaseMessaging>();
  // static final FirebaseTokenUseCase _firebaseTokenUseCase =
  //     GetIt.instance.get<FirebaseTokenUseCase>();

  static void initFirebase() async {
    // _messaging.getToken().then((value) {
    //   _firebaseTokenUseCase(params: value);
    // });
    // _messaging.onTokenRefresh.listen((event) {
    //   _firebaseTokenUseCase(params: event);
    // });
    // var initializationSettingsAndroid =
    //     const AndroidInitializationSettings('@drawable/not_logo');
    // var initializationSettingsIOs = const DarwinInitializationSettings();
    // var initSettings = InitializationSettings(
    //     android: initializationSettingsAndroid, iOS: initializationSettingsIOs);

    // await flutterLocalNotificationsPlugin
    //     .resolvePlatformSpecificImplementation<
    //         AndroidFlutterLocalNotificationsPlugin>()
    //     ?.createNotificationChannel(channelUser);

    // if (Platform.isIOS) {
    //   await flutterLocalNotificationsPlugin
    //       .resolvePlatformSpecificImplementation<
    //           IOSFlutterLocalNotificationsPlugin>()
    //       ?.requestPermissions()
    //       .then((value) {
    //     print('noti value');
    //     print(value);
    //   });
    // }
    // if (Platform.isAndroid) {
    //   await flutterLocalNotificationsPlugin
    //       .resolvePlatformSpecificImplementation<
    //           AndroidFlutterLocalNotificationsPlugin>()!
    //       .requestPermission()
    //       .then((value) {
    //     print('noti value');
    //     print(value);
    //   });
    // }
    await _messaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);

    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
    if (Platform.isAndroid) {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        if (kDebugMode) {
          print("NewMessage");
        }
        RemoteNotification notification = message.notification!;
        AndroidNotification? android = message.notification?.android;

        // flutterLocalNotificationsPlugin.initialize(initSettings,
        //     onDidReceiveNotificationResponse: (payload) {
        //   print('test');
        //   Map<String, dynamic> testMap = jsonDecode(payload.payload!);
        //   print(testMap);
        //   // if (testMap.isNotEmpty) {
        //   //   var appRouter = GetIt.instance.get<AppRouter>();
        //   //   print(testMap['type']);
        //   //   if (testMap['type'] == 'courses') {
        //   //     if (testMap['id'] != null) {
        //   //       appRouter.push(CourseDetailsRoute(
        //   //           isCourse: true, id: testMap['id'].toString()));
        //   //     } else {
        //   //       appRouter.push(SearchRoute(q: '', type: 'course'));
        //   //     }
        //   //   } else if (testMap['type'] == 'myCourses') {
        //   //     if (testMap['id'] != null) {
        //   //       appRouter.push(CourseDetailsRoute(
        //   //           isCourse: true, id: testMap['id'].toString()));
        //   //     } else {
        //   //       appRouter.push(const MyCoursesRoute());
        //   //     }
        //   //   } else if (testMap['type'] == 'categories') {
        //   //     if (testMap['id'] != null) {
        //   //       appRouter.push(CategoryCoursesRoute(
        //   //           isCategory: true, id: testMap['id'].toString()));
        //   //     } else {
        //   //       appRouter.push(const CategoriesRoute());
        //   //     }
        //   //   } else if (testMap['type'] == 'bundles') {
        //   //     if (testMap['id'] != null) {
        //   //       appRouter.push(CourseDetailsRoute(
        //   //           isCourse: false, id: testMap['id'].toString()));
        //   //     } else {
        //   //       appRouter.push(SearchRoute(q: '', type: 'bundle'));
        //   //     }
        //   //   } else if (testMap['type'] == 'instructors') {
        //   //     if (testMap['id'] != null) {
        //   //       appRouter.push(InstructorDetails(id: testMap['id'].toString()));
        //   //     } else {
        //   //       appRouter.push(const InstructorsRoute());
        //   //     }
        //   //   }
        //   // }
        // });

        // if (android != null) {
        if (kDebugMode) {
          print(
              "foreground received:: ${message.notification!.title}/${message.notification!.body}");
        }

        print(message.data['click_action']);

        // if (appRouter.currentPath != '/home-container-route/chats-route') {
        // flutterLocalNotificationsPlugin.show(
        //   Random().nextInt(10000),
        //   message.notification?.title ?? "",
        //   payload: jsonEncode(message.data),
        //   message.notification?.body ?? "",
        //   // NotificationDetails(
        //   //     iOS: const DarwinNotificationDetails(),
        //   //     android: AndroidNotificationDetails(
        //   //       channelUser.id,
        //   //       channelUser.name,
        //   //       icon: '@drawable/not_logo',
        //   //       styleInformation: const BigTextStyleInformation(''),
        //   //       // sound: const RawResourceAndroidNotificationSound('alarm'),
        //   //       playSound: true,
        //   //     )),
        // );
      });
    }

    // FirebaseMessaging.instance.getInitialMessage().then((message) {
    //   print("jlfdlkjelkhfkjehjkf$message");
    //   if (message != null) {
    //     var appRouter = GetIt.instance.get<AppRouter>();
    //     if (message.data.isNotEmpty) {
    //       print(message.data['type']);
    //       if (message.data['type'] == 'courses') {
    //         if (message.data['id'] != null) {
    //           appRouter.push(CourseDetailsRoute(
    //               isCourse: true, id: message.data['id'].toString()));
    //         } else {
    //           appRouter.push(SearchRoute(q: '', type: 'course'));
    //         }
    //       } else if (message.data['type'] == 'myCourses') {
    //         if (message.data['id'] != null) {
    //           appRouter.push(CourseDetailsRoute(
    //               isCourse: true, id: message.data['id'].toString()));
    //         } else {
    //           appRouter.push(const MyCoursesRoute());
    //         }
    //       } else if (message.data['type'] == 'categories') {
    //         if (message.data['id'] != null) {
    //           appRouter.push(CategoryCoursesRoute(
    //               isCategory: true, id: message.data['id'].toString()));
    //         } else {
    //           appRouter.push(const CategoriesRoute());
    //         }
    //       } else if (message.data['type'] == 'bundles') {
    //         if (message.data['id'] != null) {
    //           appRouter.push(CourseDetailsRoute(
    //               isCourse: false, id: message.data['id'].toString()));
    //         } else {
    //           appRouter.push(SearchRoute(q: '', type: 'bundle'));
    //         }
    //       } else if (message.data['type'] == 'instructors') {
    //         if (message.data['id'] != null) {
    //           appRouter
    //               .push(InstructorDetails(id: message.data['id'].toString()));
    //         } else {
    //           appRouter.push(const InstructorsRoute());
    //         }
    //       }
    //     }
    //   }
    // });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("onMessageOpenedApp onMessageOpenedApp");
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (kDebugMode) {
        print("onMessageOpenedApp: ${message.data}");
      }
      // if (message.data.isNotEmpty) {
      //   var appRouter = GetIt.instance.get<AppRouter>();
      //   print(message.data['type']);
      //   if (message.data['type'] == 'courses') {
      //     if (message.data['id'] != null) {
      //       appRouter.push(CourseDetailsRoute(
      //           isCourse: true, id: message.data['id'].toString()));
      //     } else {
      //       appRouter.push(SearchRoute(q: '', type: 'course'));
      //     }
      //   } else if (message.data['type'] == 'myCourses') {
      //     if (message.data['id'] != null) {
      //       appRouter.push(CourseDetailsRoute(
      //           isCourse: true, id: message.data['id'].toString()));
      //     } else {
      //       appRouter.push(const MyCoursesRoute());
      //     }
      //   } else if (message.data['type'] == 'categories') {
      //     if (message.data['id'] != null) {
      //       appRouter.push(CategoryCoursesRoute(
      //           isCategory: true, id: message.data['id'].toString()));
      //     } else {
      //       appRouter.push(const CategoriesRoute());
      //     }
      //   } else if (message.data['type'] == 'bundles') {
      //     if (message.data['id'] != null) {
      //       appRouter.push(CourseDetailsRoute(
      //           isCourse: false, id: message.data['id'].toString()));
      //     } else {
      //       appRouter.push(SearchRoute(q: '', type: 'bundle'));
      //     }
      //   } else if (message.data['type'] == 'instructors') {
      //     if (message.data['id'] != null) {
      //       appRouter
      //           .push(InstructorDetails(id: message.data['id'].toString()));
      //     } else {
      //       appRouter.push(const InstructorsRoute());
      //     }
      //   }
      // }
      print("background clicked:: ${message.data}");
    });
    // flutterLocalNotificationsPlugin.initialize(
    //   const InitializationSettings(
    //     android: AndroidInitializationSettings("@drawable/not_logo"),
    //     iOS: DarwinInitializationSettings(),
    //   ),
    // );
  }
}
