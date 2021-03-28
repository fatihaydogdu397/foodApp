import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/food_recipe_widgets/directions_widgets/directions_list_item.dart';

class Directions extends StatelessWidget {
  const Directions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, right: 20),
      child: SingleChildScrollView(
          child: Column(
        children: [
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
          DirectionsListItem(index: 1,directionName: "Wash vegetables",directionDescription: "vegetables should be washed for healthy life and save your life from corona virus thank uuuu",),
        ],
      )),
    );
  }
}
