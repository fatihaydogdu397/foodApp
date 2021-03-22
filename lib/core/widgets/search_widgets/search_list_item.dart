import 'package:flutter/material.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.only(bottom: 5.0, top: 5, left: 5, right: 5),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 7,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          "https://thelatinahomemaker.com/wp-content/uploads/2017/02/fruit-salad-3.png")),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raspberry cookie",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "by Berken Ramsay",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[400]),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.yellow[800], size: 18),
                            Icon(Icons.star,
                                color: Colors.yellow[800], size: 18),
                            Icon(Icons.star,
                                color: Colors.yellow[800], size: 18),
                            Icon(Icons.star,
                                color: Colors.yellow[800], size: 18),
                            Icon(Icons.star,
                                color: Colors.yellow[800], size: 18),
                            Icon(Icons.star_border,
                                color: Colors.yellow[800], size: 18),
                            Text(
                              "(1.683)",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(3),
                                    child: Icon(Icons.access_time,
                                        color: Colors.grey, size: 18)),
                                Text(
                                  "20 min",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(3),
                                    child: Icon(Icons.local_fire_department,
                                        color: Colors.grey, size: 18)),
                                Text(
                                  "300 cal",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
