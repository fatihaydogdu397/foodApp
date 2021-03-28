import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/food_recipe_widgets/ingredients_widgets/ingredients_list_item.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, top: 5, right: 20),
      child: SingleChildScrollView(
          child: Column(
        children: [
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
          IngredientsListItem(
            index: 1,
            itemName: "watermelon",
          ),
        ],
      )),
    );
  }
}
