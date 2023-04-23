import 'package:docum/widgets/small_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cardZayavka.dart';
import 'big_text_widget.dart';
import 'modal_bottom.dart';

class NotificationsWidget extends StatelessWidget {
  final String name;
  final String conditions;

  const NotificationsWidget(
      {Key? key,
        required this.name,
        required this.conditions,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: Row(
          children: [
            //текст
            Expanded(
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFD6A0).
                      withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),],
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color(0xFFFFE0B2),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 10,

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
                          conditions),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: (){
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                                    ),
                                    context: context,
                                    builder: (context)=> ModalBottom());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFD6A0),
                              ),
                              child: SmallText(text: 'Посмотреть')),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
