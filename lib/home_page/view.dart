import 'package:flutter/material.dart';
import 'package:talabat_app/login_screen/view.dart';
import 'package:talabat_app/widgets/custom_app_bar.dart';
import 'package:talabat_app/widgets/custom_button2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 15,left: 10,right: 10),
        children: [
          CustomAppBar('Login',true),
          SizedBox(height: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('talabat',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Text('Your everyday,right away',style: TextStyle(fontSize: 12,)),
              SizedBox(height: 70,),
              Text('Login or create an account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Login or create an account to receive rewards and save your details for a faster checkout experience',style: TextStyle(fontSize: 16,),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 15,),
              CustomButton2('    Continue with Google', null,'https://www.seekpng.com/png/full/788-7887426_google-g-png-google-logo-white-png.png',Colors.deepPurple ),
              SizedBox(height: 8,),
              CustomButton2('    Continue with Facebook', null,'https://www.la-tagliata.com/images/facebook-logo-png-white-i6.png',Colors.deepPurple ),
              SizedBox(height: 8,),
              CustomButton2('    Continue with Email',LoginView(),'https://icon-library.com/images/white-email-icon-vector/white-email-icon-vector-24.jpg',Colors.purple ),
              SizedBox(height: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
