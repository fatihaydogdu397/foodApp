import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/home_widgets/recommended_item.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommendedItem(),
              RecommendedItem(),
              RecommendedItem(),
              RecommendedItem(),
              RecommendedItem(),
              RecommendedItem(),
            ],
          )),
    );
  }
}

