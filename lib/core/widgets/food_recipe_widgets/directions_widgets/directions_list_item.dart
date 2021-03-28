import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DirectionsListItem extends StatelessWidget {
  final int index;
  final String directionName;
  final String directionDescription;

  const DirectionsListItem({
    Key key,
    this.index,
    this.directionName,
    this.directionDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 20, top: 12),
                        child: Text(
                          "$index",
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
                        Container(
                            padding: EdgeInsets.only(left: 20, top: 12),
                            child: AutoSizeText("$directionName",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20))),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width - 108,
                            padding:
                                EdgeInsets.only(left: 20, top: 5, bottom: 20),
                            child: AutoSizeText(
                                "$directionDescription",
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12))),
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
