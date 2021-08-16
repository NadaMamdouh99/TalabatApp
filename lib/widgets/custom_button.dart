import 'package:flutter/material.dart';
import 'package:talabat_app/const/colors.dart';

class CustomButton extends StatelessWidget {

  String title;
  Widget page;

  CustomButton(this.title,this.page);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(12),
      color: KSecondaryColor,
      elevation: 5,
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
      child: Text(title,style: TextStyle(fontSize: 17,color: Colors.white),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
