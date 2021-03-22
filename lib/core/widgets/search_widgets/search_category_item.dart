import 'package:flutter/material.dart';

class SearchCategoryItem extends StatelessWidget {
  const SearchCategoryItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 120,
      padding: EdgeInsets.only(right: 12, top: 12, bottom: 12),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
                // width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    "https://thelatinahomemaker.com/wp-content/uploads/2017/02/fruit-salad-3.png")),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.green.withOpacity(0.6),
                width: double.infinity,
                height: double.infinity,
              )),
          Center(
              child: Text("Fruits",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w700)))
        ],
      ),
    );
  }
}