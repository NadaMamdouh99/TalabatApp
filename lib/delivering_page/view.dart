import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/widgets/custom_list_view1.dart';
import 'package:talabat_app/delivering_page/widgets/custom_search_text_feild.dart';
import 'package:talabat_app/delivering_page/widgets/custom_slider.dart';
import 'package:talabat_app/delivering_page/widgets/search_view.dart';
import 'package:talabat_app/widgets/custom_drawer.dart';
import 'package:talabat_app/widgets/custom_tab_bar.dart';

class HomeView extends StatelessWidget {

  List images=['https://rb-traders.com/wp-content/uploads/2020/10/58102-1-1540.jpg',
    'https://www.bankrate.com/2020/08/01170557/How-to-save-money-on-groceries.jpeg',
   'https://img.jakpost.net/c/2016/09/29/2016_09_29_12990_1475116504._large.jpg',
    'https://www.foodbusinessnews.net/ext/resources/2021/6/MichelsBakeryProducts_Lead.jpg?t=1623330828&width=1080',
    'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://rb-traders.com/wp-content/uploads/2020/10/58102-1-1540.jpg',
    'https://www.bankrate.com/2020/08/01170557/How-to-save-money-on-groceries.jpeg',
    'https://img.jakpost.net/c/2016/09/29/2016_09_29_12990_1475116504._large.jpg',
    'https://www.foodbusinessnews.net/ext/resources/2021/6/MichelsBakeryProducts_Lead.jpg?t=1623330828&width=1080',
    'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];

  List titles=['Food','Grocries','Fast Food','Bakeries','Healthy', 'Food','Grocries','Fast Food','Bakeries','Healthy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Column(
          children: [
            Text('Delivering to',style: TextStyle(color: Colors.black54,fontSize: 13),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('El-GALLA Street',style: TextStyle(color: Colors.purple.shade400,fontSize: 15),),
                Icon(Icons.keyboard_arrow_down_outlined, color: Colors.purple.shade400),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              icon: Icon(Icons.search_outlined),
              color: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchView(),));
              },),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          CustomTabBar(),
          Divider(thickness: 3,),
          CustomListView1(images,titles,'What would you like to order, Ahmed?',20,90,100,200,200),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                height: 150.0,
                width: double.infinity,
                child: Carousel(
                  images: [
                    NetworkImage(
                        'https://www.bankrate.com/2020/08/01170557/How-to-save-money-on-groceries.jpeg'),
                    NetworkImage(
                        'https://img.jakpost.net/c/2016/09/29/2016_09_29_12990_1475116504._large.jpg'),
                    NetworkImage(
                        'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  ],
                  dotColor: Colors.purple[300],
                  dotIncreasedColor: Colors.purple,
                  autoplay: true,
                  dotBgColor: Colors.transparent,
                )),
          ),
          CustomListView1(images,titles,'Popular brands near you             ',70,90,100,170,200),
          CustomListView1(images,titles,'Groceries                                    ',15,130,200,300,200),


        ],
      ),
    );
  }
}
