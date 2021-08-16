import 'package:flutter/material.dart';
import 'package:talabat_app/home_page/view.dart';
import 'package:talabat_app/login_screen/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('talabat',style: TextStyle(fontSize: 55,fontWeight: FontWeight.bold,color: Colors.white,decoration: TextDecoration.none)),
            SizedBox(height: 10,),
            Text('"Food delivery platform for expo 2020"',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.none,fontSize: 7),)
          ],
        ),
      ),
    );
  }
}
