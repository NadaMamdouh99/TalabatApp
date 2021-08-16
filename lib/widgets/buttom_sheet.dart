import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/widgets/filters_details.dart';

class CustomButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height* 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )
              ),
              child: Container(
                width: 500,
                height: 500,
                child: FiltersDetails(),
              ),
            )
        );
      },
    );
  }
}
