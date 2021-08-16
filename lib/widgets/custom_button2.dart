import 'package:flutter/material.dart';
import 'package:talabat_app/const/colors.dart';

class CustomButton2 extends StatelessWidget {

  String title;
  Widget page;
  String url;
  Color color;

  CustomButton2(this.title,this.page,this.url,this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 20,right: 15,left: 15, bottom: 13),
      child: RaisedButton(
        padding: EdgeInsets.all(8),
        color: color,
        elevation: 5,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => page)),
        child: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(url),backgroundColor: Colors.transparent,),
            Text(title,style: TextStyle(fontSize: 15,color: Colors.white,),textAlign: TextAlign.center,),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
