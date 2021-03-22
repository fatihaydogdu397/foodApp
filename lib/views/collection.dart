import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/collection_widgets/collection_category_item.dart';
import 'package:food_app/core/widgets/collection_widgets/collection_list_item.dart';

class Collection extends StatelessWidget {
  const Collection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Collection",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              Container(
               padding: EdgeInsets.only(top:20, bottom:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.filter_alt_sharp,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.filter_alt_sharp,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.filter_alt_sharp,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                      CollectionCategoryItem(),
                    ],
                  )),Expanded(
              
              child: Container(
                 padding: EdgeInsets.only(top:20),
                child: GridView.count(
                  crossAxisCount: 2,
                  // shrinkWrap: true,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  children: [
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                    CollectionListItem(),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}


