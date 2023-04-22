import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/small_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  const ModalBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(padding:EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: BigText(text: 'Установка дорожных ограждений', size: 18,color: CupertinoColors.black, ),
          ),
          Center(
            child: BigText(text: 'Описание', size: 18,color: CupertinoColors.black, ),
          ),
          SmallText(text: "Установка Б/О и Замена Б/О", color: CupertinoColors.black,size: 15,),
          SmallText(text: "Установка от 400 руб. / м.п.", color: CupertinoColors.black,size: 15,),
          SmallText(text: "Замена от 4938 руб. / м.п.", color: CupertinoColors.black,size: 15,),
          SmallText(text: "Время выполнения работ: 2 месяца", color: Color(0xFF332d2b),size: 15,),
          SmallText(text: "Условия: работа + материал", color: Color(0xFF332d2b),size: 15,),
          SmallText(text: "Примечание: Зависит от договора и типа", color: Color(0xFF332d2b),size: 15,),
          Container(
            height: 120,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: 12,
                        bottom: 12,
                        right: 8,
                        ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.pop(context);
                          } ,
                          child: BigText(
                            text:
                            'Закрыть',
                            color: Color.fromARGB(189, 223, 64, 79),
                          ),
                        ),
                        SizedBox(width: 5,),
                      ],
                    )),
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
                          'Откликнуться',
                          color: Color.fromARGB(
                              195, 76, 175, 79),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.check, color: Color.fromARGB(
                            195, 76, 175, 79),),
                      ],
                    ))
              ],
            ),),
        ],
      ));
  }
}
