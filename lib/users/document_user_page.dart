import 'package:docum/users/home_user_page.dart';
import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/document_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../docScreen.dart';
import '../menu_page.dart';
import 'document_user_widget.dart';

class DocumentUserPage extends StatelessWidget {
  const DocumentUserPage ({Key? key}) : super(key: key);

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
                    color: Colors.black
                ), onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeUserPage()));
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
            DocumentUserWidget(name: 'Государственный контракт', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'ПРИКАЗ № 503-ПР', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'Солгласование материалов', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'Заявка на г-образные опоры', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'Схемы ОДД', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'Таблица учета выполненных работ', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'Протоколы ООО СКЗМК', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'КС-2, КС-3-черноморье СКЗМК', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'КС-6', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),
              DocumentUserWidget(name: 'Акт приемочной комиссии о приемке в эксплуатацию законченного обьекта', conditions: 'Нажмите , чтобы расписаться'),
              SizedBox(height: 10),

            ],
          ),
        )
    );
  }
}
