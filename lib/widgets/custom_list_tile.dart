import 'package:flutter/material.dart';
import 'package:talabat_app/widgets/custom_drawer.dart';

class CustomListTile extends StatefulWidget {

  String title;
  IconData icon;

  CustomListTile(this.title, this.icon);

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  //int selectedindex=0;

  /*_onSelectItem(int index) {
    setState(() =>  widget.index=0);
    //Navigator.of(context).pop(); // close the drawer
  }*/

  /*Widget select() {
    setState(() {
      widget.isSelected=true;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 20),),
      leading: Icon(widget.icon,color: Colors.black,size: 22,),
    );




      /*Row(
      children: [
        Icon(widget.icon,color: Colors.black,size: 22,),
        Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 20),)
      ],
    )*/;














    /*Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.index == 0 && widget.isSelected==true ? Colors.purple : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          width: 7,
          height: 30,
        ),
        Expanded(
          child: ListTile(
            title: Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 20),),
            leading: Icon(widget.icon,color: Colors.black,size: 22,),
            //selectedTileColor: Colors.purple,
            selected: true,
            onTap: () => _onSelectItem(widget.index),
          ),
        ),
      ],
    );*/
  }
}
