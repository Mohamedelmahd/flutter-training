import 'package:flutter/material.dart';
import 'package:flutter_project/firebase_options.dart';
import 'package:flutter_project/screens/categories_screen.dart';
import 'package:flutter_project/screens/devInfo.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/screens/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_project/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'cars',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


