import 'package:docum/services/zayavky.dart';
import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/document_widget.dart';
import 'package:docum/widgets/notifications_widget.dart';
import 'package:docum/widgets/zayavky_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../docScreen.dart';
import '../../menu_page.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage ({Key? key}) : super(key: key);

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
                    builder: (context) => NotificationsPage()));
              },),


            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(right: 15),
                  child:BigText(text: "Уведомления", size: 18,),
                )
              ],
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Поиск...',
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Обработчик нажатия на иконку фильтрации
                    },
                    icon: Icon(Icons.filter_list),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ZayavkyPage()));
                },
                child: NotificationsWidget(name: 'Тендер №38723', conditions: 'Договор подписан'),
              ),
              SizedBox(height: 10),
              NotificationsWidget(name: 'Тендер №38723',  conditions: 'Требуется подпись договора'),
              SizedBox(height: 10),
              NotificationsWidget(name: 'Обновление в документах', conditions: 'Ваш запрос одобрен!',),
              SizedBox(height: 10),
              NotificationsWidget(name: 'Заявка на тендер', conditions: 'Прикрепите информацию о себе',),
              SizedBox(height: 10),
              NotificationsWidget(name: 'ИП Иванов', conditions: 'Уникальность предложения',),
              SizedBox(height: 10),
              NotificationsWidget(name: 'Добро пожаловать!', conditions: 'Вы зарегистрировались в приложении',),
              SizedBox(height: 10),



            ],
          ),
        )
    );
  }
}
