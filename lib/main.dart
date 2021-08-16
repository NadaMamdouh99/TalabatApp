import 'package:flutter/material.dart';
import 'package:talabat_app/login_screen/view.dart';
import 'package:talabat_app/splash_screen/view.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
