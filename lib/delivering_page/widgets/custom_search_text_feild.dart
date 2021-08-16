import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {

  String title;
  Widget icon;

  CustomSearchTextFeild(this.title,this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
      child: TextField(
        decoration: InputDecoration(
          labelText: title,
          prefixIcon: Icon(Icons.search_outlined,color: Colors.black,size: 40,),
          suffixIcon: icon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(5),
          )
        ),
      ),
    );
  }
}
