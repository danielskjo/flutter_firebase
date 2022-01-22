import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/responsive/mobile_screen_layout.dart';
import 'package:instagram/responsive/responsive_layout.dart';
import 'package:instagram/responsive/web_screen_layout.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/signup_screen.dart';
import 'package:instagram/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAv2hQAY4XPPj3xEvyDKLQaC9b6Tb09JQw",
        appId: "1:516653149906:web:906d62cef9a0b5b9f1070b",
        messagingSenderId: "516653149906",
        projectId: "instagram-c505a",
        storageBucket: "instagram-c505a.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()),
      home: const SignupScreen(),
    );
  }
}
