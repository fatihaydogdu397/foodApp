import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class IngredientsListItem extends StatelessWidget {
  final int index;
  final String itemName;
  const IngredientsListItem({Key key,this.index,this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 20, top: 12),
                              child: AutoSizeText("$itemName",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20))),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //         width: MediaQuery.of(context).size.width - 108,
                      //         padding:
                      //             EdgeInsets.only(left: 20, top: 5, bottom: 20),
                      //         child: AutoSizeText(
                      //             "a visual exploration asjdha asdlkjajhd asdkjhajshdj asldjkhadhjsa ",
                      //             maxLines: 3,
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.w300,
                      //                 fontSize: 12))),
                      //   ],
                      // ),
                    ],
                  ),
                ]),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Divider()),
          ],
        ),
      ),
    );
  }
}
