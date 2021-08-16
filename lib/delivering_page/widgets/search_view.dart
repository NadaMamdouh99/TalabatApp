import 'package:flutter/material.dart';
import 'package:talabat_app/delivering_page/widgets/custom_search_text_feild.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
            Expanded(child: CustomSearchTextFeild('Search for resturants or....',null)),
          ],
        ),
      ),
    );
  }
}
