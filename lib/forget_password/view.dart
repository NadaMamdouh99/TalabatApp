import 'package:flutter/material.dart';
import 'package:talabat_app/const/colors.dart';
import 'package:talabat_app/forget_password/widgets/custom_alert_dialog.dart';
import 'package:talabat_app/login_screen/view.dart';
import 'package:talabat_app/welcome_to_talabat_screen/view.dart';
import 'package:talabat_app/widgets/custom_app_bar.dart';
import 'package:talabat_app/widgets/custom_button.dart';

class ForgetPasswordView extends StatefulWidget {
  @override
  _ForgetPasswordViewState createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Code',textAlign: TextAlign.center,),
          contentPadding: EdgeInsets.all(0),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 500,
                  height: 100,
                  child: CustomAlertDialog(),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan> [
                      TextSpan(
                          text: "you can resend code after ",
                          style: TextStyle(color: Colors.grey[600])),
                      TextSpan(
                          text: "60sec",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          )),
                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 8,right: 8,bottom: 8),
                  child: Container( width: 230,padding: EdgeInsets.all(20),child: CustomButton('Confirm', LoginView())),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 15,left: 10,right: 10),
          children: [
            CustomAppBar('Forgotten password', false),
            Padding(
              padding: const EdgeInsets.only(left:5.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
              ),
            ),
            SizedBox(height: 40,),
            RaisedButton(
              onPressed:_showMyDialog,
              child: Text('Reset your password',style: TextStyle(fontSize: 15,color: Colors.white),),
              color: KSecondaryColor,
              padding: EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        )
    );
  }
}
