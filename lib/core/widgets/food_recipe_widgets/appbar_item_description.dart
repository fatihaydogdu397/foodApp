import 'package:flutter/material.dart';

class AppbarItemDescription extends StatelessWidget {
  const AppbarItemDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(20),
        // margin:EdgeInsets.all(20),
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Fruit Salad with Milk",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              Icon(Icons.play_circle_outline_outlined, size: 30)
            ]),
            Text(
              "by Caroline Sterwart",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 17),
                  Icon(Icons.star, color: Colors.yellow, size: 17),
                  Icon(Icons.star, color: Colors.yellow, size: 17),
                  Icon(Icons.star, color: Colors.yellow, size: 17),
                  Icon(Icons.star_outline_outlined,
                      color: Colors.yellow, size: 17),
                  Text(
                    "(1.683)",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.lightGreen, size: 35),
                    Text(
                      "15 min",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.room_service_outlined,
                        color: Colors.lightGreen, size: 35),
                    Text(
                      "4 Serving",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.view_list_outlined,
                        color: Colors.lightGreen, size: 35),
                    Text(
                      "10 Steps",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
