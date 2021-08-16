import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {

  String title;
  bool value;

  CustomAppBar(this.title,this.value);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      //automaticallyImplyLeading: value,
      //padding: EdgeInsets.only(top: 10,left: 1,right: 10),
      centerTitle:true,
      title: Text(title,style: TextStyle(color: Colors.black),),
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 30
      ),
    );
  }
}
