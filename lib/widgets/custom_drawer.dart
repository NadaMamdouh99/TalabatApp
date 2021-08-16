import 'package:flutter/material.dart';
import 'package:talabat_app/widgets/custom_list_tile.dart';

class CustomDrawer extends StatefulWidget {

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  int gindex=0;

  List items = [
    CustomListTile('Home',Icons.home,),
    CustomListTile('Your Orders',Icons.assignment_sharp,),
    CustomListTile('Offers',Icons.local_offer,),
    CustomListTile('Notifications',Icons.notifications,),
    CustomListTile('Talabat pay',Icons.credit_card_outlined,),
    CustomListTile('Vouchers',Icons.vignette_outlined,),
    CustomListTile('Get help',Icons.assistant_photo_sharp,),
    CustomListTile('About us',Icons.help_outline_outlined,),
  ];

  _onSelected(int index) {
    setState(() => gindex= index);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children : [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.person),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.black)
                    )
                ),
                Column(
                  children: [
                    Text('HI GUEST',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    Text('Egypt',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ],
                ),
                Icon(Icons.settings),
              ],
            ),
            SizedBox(height: 20,),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: items.length,
                //scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Row (
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: gindex != null && gindex == index? Colors.purple : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 7,
                        height: 30,
                      ),
                      Expanded(
                        child: InkWell(
                          child: items[index],
                          onTap: () => _onSelected(index),
                        ),
                      )
                    ],
                  );
                }
            ),
          ]
        ),
      ),
    );
  }
}
