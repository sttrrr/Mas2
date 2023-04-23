import 'package:docum/widgets/add_render_widget.dart';
import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/employess_widget.dart';
import 'package:docum/widgets/modal_bottom.dart';
import 'package:docum/widgets/tender_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TenderPage extends StatelessWidget {
  const TenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child:  ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: GestureDetector(
                        onTap: (){
                          showModalBottomSheet(
                            isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                              ),
                              context: context,
                              builder: (context)=> AddTenderWidget());
                        },child:Row(
                        children: [
                          BigText(
                            text:
                            'Добавить',
                            color: Color.fromARGB(
                                195, 76, 175, 79),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                              Icons.add, color: Color.fromARGB(
                                195, 76, 175, 79),),

                        ],
                      )) ,
                ))
              ],
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                    ),
                    context: context,
                    builder: (context)=> ModalBottom());
              },
              child: TenderWidget(name: "Установка дорожных ограждений", time: "Срок: 2 месяца", price: "Цена от: 1566 руб/м.п"),
            ),

          ],
        ),
      )

    );
  }
}
