import 'package:docum/widgets/small_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text_widget.dart';

class EmployessWidget extends StatelessWidget {
  final String name;
  final String surname;
  final String departament;
  final String inn;


  const EmployessWidget(
      {Key? key,
        required this.name,
        required this.inn, required this.surname, required this.departament,
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
                height: 185,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(97, 255, 193, 79).
                      withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),],
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromARGB(97, 255, 193, 79),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 10,

                      left: 15,
                      right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          BigText(
                            text: name, size: 18,),
                          SmallText(
                              text:
                              surname),
                          SmallText(
                              text:
                              inn),
                          SmallText(
                              text:
                              departament),

                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10),
                      child:Icon(Icons.person), )

                    ],
                  )
                ),
              ),
            ),
          ]),
    );
  }
}
