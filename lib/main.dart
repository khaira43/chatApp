
import 'package:chat/themes/light_mode.dart';

import 'package:flutter/material.dart';
import 'auth/login_or_register.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
    ); 
  }
}
      