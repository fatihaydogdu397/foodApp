import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';



class FoodListItem extends StatelessWidget {
  const FoodListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 200,
      // color: Colors.black,
      // padding: EdgeInsets.only(right: 20, top: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
                 height: double.infinity,
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    "https://thelatinahomemaker.com/wp-content/uploads/2017/02/fruit-salad-3.png")),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: ClipOval(
              child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(0.4)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                      size: 20,
                    ),
                  )),
            ),
          ),
          Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Apple Milkshake",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time,
                                  size: 20, color: Colors.white),
                              Text(
                                "20 min",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
