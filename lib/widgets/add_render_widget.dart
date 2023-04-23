import 'package:docum/widgets/small_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text_widget.dart';

class AddTenderWidget extends StatelessWidget {
  const AddTenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(padding:EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Наименование"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Описание"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Цена от"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Сроки"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Условия"
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 85,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          BigText(
                            text:
                            'Прикрепить документ',
                            color: Color.fromARGB(
                                195, 76, 175, 79),
                          ),

                        ],
                      ))
                ],
              ),),
            SizedBox(height: 10,),
            Container(
              height: 85,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          BigText(
                            text:
                            'Опубликовать',
                            color: Color.fromARGB(
                                195, 76, 175, 79),
                          ),

                        ],
                      ))
                ],
              ),),
          ],
        ));
  }
}
