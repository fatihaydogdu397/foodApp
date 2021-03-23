import 'package:flutter/material.dart';


class AppbarItemDescription extends StatelessWidget {
  const AppbarItemDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Fruit Salad with Milk",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            Icon(Icons.play_circle_outline_outlined, size: 20)
          ]),
          Text(
            "by Caroline Sterwart",
            style: TextStyle(color: Colors.grey, fontSize: 9),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 10),
              Icon(Icons.star, color: Colors.yellow, size: 10),
              Icon(Icons.star, color: Colors.yellow, size: 10),
              Icon(Icons.star, color: Colors.yellow, size: 10),
              Icon(Icons.star_outline_outlined, color: Colors.yellow, size: 10),
              Text(
                "(1.683)",
                style: TextStyle(color: Colors.grey[400], fontSize: 8),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.access_time, color: Colors.lightGreen, size: 25),
                  Text(
                    "15 min",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.room_service_outlined, color: Colors.lightGreen, size: 25),
                  Text(
                    "4 Serving",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.view_list_outlined, color: Colors.lightGreen, size: 25),
                  Text(
                    "10 Steps",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}