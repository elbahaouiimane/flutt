import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:elbaha_app/screens/home_page.dart';
import 'package:elbaha_app/screens/login_page.dart';
import 'package:elbaha_app/screens/register_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:ColorScheme.fromSeed(seedColor: Colors.blue)
      ),

      title: 'imanezz flutter application',
    //home: HomePage()
    initialRoute: '/login',
      routes: {
        '/login':(context)=>LoginPage(),
        '/register':(context)=>RegisterPage(),
        '/home':(context)=>HomePage()
      },
    );
  }
}
