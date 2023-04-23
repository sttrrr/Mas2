import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/document_widget.dart';
import 'package:docum/widgets/zayavky_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../docScreen.dart';
import '../../menu_page.dart';

class ZayavkyPage extends StatelessWidget {
  const ZayavkyPage ({Key? key}) : super(key: key);

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
                  child:BigText(text: "Входящие предложения", size: 18,),
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
                child: ZayavkyWidget(name: 'ООО "ЛучшиеДороги"', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              ),
              SizedBox(height: 10),
             ZayavkyWidget(name: 'ООО "Подрядчик"',  conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ИП Иванов', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ООО "ДорогиКраснодара"', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000", ),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ОАО "РосАвтоДор"', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ООО "СочиАвтоДор"', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000", ),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ИП Сидоров', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ОАО "МастерСтрой"', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'КС-6', conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000",),
              SizedBox(height: 10),
              ZayavkyWidget(name: 'ИП Смирнов',conditions: 'Уникальность предложения', srok: "45 дней", kolvo: "15 человек" , price: "4 500 000", ),
              SizedBox(height: 10),

            ],
          ),
        )
    );
  }
}
