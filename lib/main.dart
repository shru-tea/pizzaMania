import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizzamania/helpers/header.dart';
import 'package:pizzamania/views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Headers())],
      child: MaterialApp(
          title: 'Pizza Mania',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.deepOrange,
              primaryColor: Colors.deepOrangeAccent,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: SplashScreen()),
    );
  }
}
