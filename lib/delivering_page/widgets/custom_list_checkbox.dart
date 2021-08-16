import 'package:flutter/material.dart';
import 'package:talabat_app/const/colors.dart';

class ListCheckBox extends StatefulWidget {

  String title;
  ListCheckBox(this.title);

  @override
  _ListCheckBoxState createState() => _ListCheckBoxState(title);
}

class _ListCheckBoxState extends State<ListCheckBox> {


  bool _value = false;
  String title;
  _ListCheckBoxState(this.title);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 30,
      child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          tristate: true,
          contentPadding: EdgeInsets.all(0),
          autofocus: false,
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
          activeColor: KSecondaryColor,
          checkColor: Colors.white,
          title: Text(title, style: TextStyle(fontSize: 15),),
        dense: true,
        isThreeLine: false,
        ),
    );
  }
}
