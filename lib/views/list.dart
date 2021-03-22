import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/list_widgets/food_list_item.dart';
import 'package:responsive_grid/responsive_grid.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.grey, size: 30),
                  Text("Fruits",
                      style: TextStyle(fontSize: 28, color: Colors.grey[800])),
                  Container()
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
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
            Expanded(
              
              child: Container(
                padding: EdgeInsets.only(left:20,right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  // shrinkWrap: true,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  children: [
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                    FoodListItem(),
                  ],
                ),
              ),
            ),
            // Expanded(
            //   child: ResponsiveGridList(
            //       desiredItemWidth: 200,
            //       rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       squareCells: true,
            //       minSpacing: 20,
            //       children: [
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //         FoodListItem(),
            //       ]),
            // )
          ],
        ),
      ),
    ));
  }
}
