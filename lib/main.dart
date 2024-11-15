import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:uts/domain/usecases/navigate_to_page.dart';
import 'package:uts/presentation/pages/daftar_agen.dart';
import 'package:uts/presentation/pages/storage_page.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/manajemen_page.dart';
import 'presentation/pages/settings_page.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'firebase_options.dart';
import 'dart:developer'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  
  final fcmToken = await FirebaseMessaging.instance.getToken();
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  log("FCMToken: $fcmToken");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      title: 'UTS',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(homeController),
        '/manajemen': (context) => ManajemenPage(homeController),
        '/daftar': (context) => DaftarAgenPage(homeController),
        '/storage': (context) => StoragePage(homeController),
        '/settings': (context) => SettingsPage(homeController),
      },
    );
  }
}
