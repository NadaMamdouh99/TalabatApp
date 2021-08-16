import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/view.dart';
import 'package:talabat_app/forget_password/view.dart';
import 'package:talabat_app/main.dart';
import 'package:talabat_app/welcome_to_talabat_screen/view.dart';
import 'package:talabat_app/widgets/custom_app_bar.dart';
import 'package:talabat_app/widgets/custom_button.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  bool visiblePassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 15,left: 10,right: 10),
        children: [
          CustomAppBar('Login',true),
          Padding(
            padding: const EdgeInsets.only(top: 12.0,bottom: 12,left: 5),
            child: Text('Continue with email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0,bottom: 50),
            child: TextField(
              obscureText: visiblePassword,
              decoration: InputDecoration(
                  hintText: 'Password',
                  suffix: FlatButton(
                    minWidth: 8,
                    child: Text('Show',style: TextStyle(fontSize: 15,color: Colors.black)),
                    onPressed: ()  {
                      setState(() {
                        visiblePassword=!visiblePassword;
                      });
                    },
                  )
              ),
            ),
          ),
          Container(child: CustomButton('Login',HomeView()),width: double.infinity,),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text('Forget password ?',style: TextStyle(fontSize: 15,color: Colors.purple)),
                  onPressed: () => {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPasswordView())),
                  }
                ),
                TextButton(
                  child: Text('Create an account',style: TextStyle(fontSize: 15,color: Colors.purple)),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomeToTalabatScreen())),
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
