import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'theme/theme.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carúpano Padel Club',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}