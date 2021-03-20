import 'package:flutter/material.dart';

class TodayRecipe extends StatelessWidget {
  const TodayRecipe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                elevation: 12,
                child: Center(
                  child: Image(
                      height: 320,
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          "https://thelatinahomemaker.com/wp-content/uploads/2017/02/fruit-salad-3.png")),
                ),
              )),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [Text("Fruit Salad Milk"), Icon(Icons.bookmark_border, color: Colors.grey,)],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_outline_outlined,
                      color: Colors.yellow,
                    ),
                    Text("4.5")
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.lightGreen,
                        ),
                        Text("20 min"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.local_fire_department_sharp,
                          color: Colors.lightGreen,
                        ),
                        Text("300 cal/serving"),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
