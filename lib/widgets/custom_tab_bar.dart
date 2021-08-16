import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/widgets/cuisines_details.dart';
import 'package:talabat_app/delivering_page/widgets/filters_details.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                height: MediaQuery.of(context).size.height*0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )
                ),
                child: Center(
                  child: FiltersDetails(),
                ),
              )
              );
            },
            child: Row(
              children: [
                Icon(Icons.filter_alt),
                Text('Filter'),
              ],
            ),
          ),


          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                    height: MediaQuery.of(context).size.height*0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )
                    ),
                    child: Center(
                      child: CuisinesDetails(),
                    ),
                  )
              );
            },
            child: Row(
              children: [
                Icon(Icons.ac_unit),
                Text('Cuisines'),
              ],
            ),
          ),

          Row(
            children: [
              Icon(Icons.search_outlined),
              Text('Search'),
            ],
          ),
        ],
      ),
    );
  }
}
