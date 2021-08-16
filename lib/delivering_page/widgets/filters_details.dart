import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/widgets/custom_list_checkbox.dart';

class FiltersDetails extends StatefulWidget {
  @override
  _FiltersDetailsState createState() => _FiltersDetailsState();
}

class _FiltersDetailsState extends State<FiltersDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.cancel_outlined),
                onPressed: () {
                Navigator.pop(context);
                },
              ),
              Text('Filters', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text('Clear all', style: TextStyle(fontSize: 16, color: Colors.purple),),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Popular filters', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ListCheckBox('Fast delivery (within3min)'),
                  ListCheckBox('Free delivery'),
                  ListCheckBox('price: \$-\$\$ (low and average prices)'),
                  ListCheckBox('Top rated'),
                  ListCheckBox('Newly added'),
                  SizedBox(height: 20,),
                  Text('Deals and offers', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ListCheckBox('Summer offers'),
                  ListCheckBox('Delivered by us'),
                  ListCheckBox('Koshary lovers'),
                  ListCheckBox('User Voucher Here'),
                  ListCheckBox('Save with visa'),
                  ListCheckBox('Healthy Mix'),
                  ListCheckBox('Online payment Avaliable'),
                  ListCheckBox('Free Dlivery'),
                  ListCheckBox('Newly added'),
                  ListCheckBox('All Deals'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
