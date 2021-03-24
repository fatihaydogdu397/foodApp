import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Directions extends StatelessWidget {
  const Directions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, right: 20),
      child: SingleChildScrollView(
          child: Column(
        children: [
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
          DirectionsListItem(),
        ],
      )),
    );
  }
}

class DirectionsListItem extends StatelessWidget {
  const DirectionsListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "1",
                          style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 23,
                              fontWeight: FontWeight.w900),
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: AutoSizeText("Wash vegetables",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800, fontSize: 20))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 20, top: 7, bottom: 20),
                              child: AutoSizeText(
                                  "a visual exploration ",
                                  maxLines: 3,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal, fontSize: 14))),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
