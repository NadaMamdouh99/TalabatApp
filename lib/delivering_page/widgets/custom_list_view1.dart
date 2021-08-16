import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListView1 extends StatelessWidget {

  List image;
  List title;
  String text;
  double number;
  double height;
  double width;
  double contHeight;
  double contWidth;


  CustomListView1(this.image,this.title,this.text,this.number,this.height,this.width,this.contHeight,this.contWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: contWidth,
      height: contHeight,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(text,style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.left, ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: image.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:5.0, top: 10,bottom: 5),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(number),
                          child: Image.network(image[index],height: height,width: width,fit: BoxFit.fill,),
                      ),
                    ),
                    Text(title[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  ],
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
