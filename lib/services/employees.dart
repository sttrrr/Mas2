import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/document_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../docScreen.dart';
import '../menu_page.dart';

class Employess extends StatelessWidget {
  const Employess ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(
                    Icons.keyboard_backspace,
                    color: Colors.black26
                ), onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HiddenDrawer()));
              },),


            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(right: 15),
                  child:BigText(text: "Документы", size: 18,),
                )
              ],
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DocScreen()));
                },
                child: DocumentWidget(name: 'Государственный контракт', conditions: 'conditions',),
              ),
              SizedBox(height: 10),
              DocumentWidget(name: 'ПРИКАЗ № 503-ПР',  conditions: 'conditions',),
              SizedBox(height: 10),
              DocumentWidget(name: 'Солгласование материалов', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'Заявка на г-образные опоры', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'Схемы ОДД ', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'Таблица учета выполненных работ', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'Протоколы ООО СКЗМК ', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'КС-2, КС-3-черноморье СКЗМК', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'КС-6', conditions: 'conditions', ),
              SizedBox(height: 10),
              DocumentWidget(name: 'Акт приемочной комиссии о приемке в эксплуатацию законченного обьекта', conditions: 'conditions', ),
              SizedBox(height: 10),

            ],
          ),
        )
    );
  }
}
