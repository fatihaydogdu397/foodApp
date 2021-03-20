import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/home_widgets/recommended_list.dart';
import 'package:food_app/core/widgets/home_widgets/today_recipe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications_none_outlined),
                        onPressed: null,
                        iconSize: 30,
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: null,
                        iconSize: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Today recipe",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                )),
            TodayRecipe(),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FruitItems(),
                  FruitItems(),
                  FruitItems(),
                  FruitItems(),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Recommended",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                )),
                RecommendedList(),
          ],
        ),
      ),
    ));
  }
}

class FruitItems extends StatelessWidget {
  const FruitItems({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Icon(
            MdiIcons.fruitPineapple,
            color: Colors.grey,
            size: 35,
          ),
          Text(
            "Fruit",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
