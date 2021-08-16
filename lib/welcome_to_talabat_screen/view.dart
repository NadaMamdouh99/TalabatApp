import 'package:flutter/material.dart';
import 'package:talabat_app/const/colors.dart';
import 'package:talabat_app/delivering_page/view.dart';
import 'package:talabat_app/login_screen/view.dart';
import 'package:talabat_app/widgets/custom_app_bar.dart';
import 'package:talabat_app/widgets/custom_button.dart';

class WelcomeToTalabatScreen extends StatefulWidget {
  @override
  _WelcomeToTalabatScreenState createState() => _WelcomeToTalabatScreenState();
}

class _WelcomeToTalabatScreenState extends State<WelcomeToTalabatScreen> {
  bool _value = false;
  bool visiblePassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 10,right: 10),
        children: [
          CustomAppBar('Welcome to talabat',false),
          Padding(
            padding: const EdgeInsets.only(top: 12.0,bottom: 12,left: 5),
            child: Text('Continue with email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0,bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'First name'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0,bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Last name'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0,),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:5.0,bottom: 5),
            child: TextField(
              obscureText: visiblePassword,
              decoration: InputDecoration(
                  hintText: 'Password',
                  helperText: 'your password must be at least 6 characters',
                  helperStyle: TextStyle(fontSize: 13),
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
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.all(0),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            activeColor: KSecondaryColor,
            checkColor: Colors.white,
            title: Text('Yes , I want to receive offers and discounts.', style: TextStyle(fontSize: 12),),
          ),

          Padding(
            padding: const EdgeInsets.only(top:20.0,bottom: 5),
            child: CustomButton('Create account', HomeView()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "By creating an account you agree to the ",
                    style: TextStyle(color: Colors.black87)),
                TextSpan(
                    text: "Privacy policy",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        )),
                TextSpan(
                    text: "and to the ",
                    style: TextStyle(color: Colors.black87)),
                TextSpan(
                    text: "terms of use",
                    style: TextStyle(
                        color: Colors.deepPurple,
                    )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
