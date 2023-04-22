import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/document_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../docScreen.dart';
import '../menu_page.dart';
import '../widgets/employess_widget.dart';

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
                    color: Colors.black
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
                  child:BigText(text: "Сотрудники", size: 18,),
                )
              ],
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 10),
          EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),
              EmployessWidget(name: 'Иванов Иван Иванович', surname: 'Паспорт: 0377 774789',inn: 'ИНН: 4563741516',departament: 'Отдел: Бухгалтерия',),
              SizedBox(height: 10),

            ],
          ),
        )
    );
  }
}
