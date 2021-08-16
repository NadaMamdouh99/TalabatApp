import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/widgets/custom_list_checkbox.dart';
import 'package:talabat_app/delivering_page/widgets/custom_search_text_feild.dart';

class CuisinesDetails extends StatefulWidget {
  @override
  _CuisinesDetailsState createState() => _CuisinesDetailsState();
}

class _CuisinesDetailsState extends State<CuisinesDetails> {

  List titles=['Shawerma','Soup','Street Food','Thai','Waffels','Warps','Yemeni','Delivered by us','Koshary lovers',
   'User Voucher Here', 'Save with visa', 'Healthy Mix', 'Online payment Avaliable', 'Free Dlivery', 'Newly added', 'All Deals',
  ];
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
        CustomSearchTextFeild('Search cuisine',Icon(Icons.cancel_outlined,color: Colors.black,),),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            itemCount: titles.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  titles[index],
                  style: TextStyle(fontSize: 15,color: Colors.black87),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


