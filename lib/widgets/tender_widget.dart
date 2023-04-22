import 'package:docum/widgets/small_text_widget.dart';
import 'package:flutter/cupertino.dart';

import 'big_text_widget.dart';

class TenderWidget extends StatelessWidget {
  final String name;
  final String time;
  final  String conditions;
  final  String price;
  const TenderWidget ({Key? key, required this.name, required this.time, required this.conditions, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                   Container(
      margin: EdgeInsets.only(
          right: 20,
          left: 20,
         ),
      child: Row(
          children: [
            //текст
            Expanded(
              child: Container(
                height: 85,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(47, 156, 239, 160).
                      withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),],
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromARGB(106, 76, 175, 79),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 15,
                      right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: [
                      BigText(
                        text: name, size: 18,),
                      SmallText(
                          text:
                          time),
                      SmallText(
                          text:
                          conditions),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
