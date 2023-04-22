import 'package:docum/OrgScreen.dart';
import 'package:docum/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:docx_template/docx_template.dart';

import 'menu_page.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({Key? key}) : super(key: key);

  @override
  _DocScreenState createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  final _zakazController = TextEditingController();
  final _faceController = TextEditingController();
  final _obyazController = TextEditingController();
  final _priceController = TextEditingController();
  final _endController = TextEditingController();
  final _garantController = TextEditingController();
  final _fullEndController = TextEditingController();
  final _workController = TextEditingController();

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

              children: [
                Padding(padding: EdgeInsets.only(right: 15),
                  child:BigText(text: "Редактор", size: 18,),
                )
              ],
            )
          ],),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Заказчик:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _zakazController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Название ООО, ОАО...',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Лицо представляющее орг.:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _faceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'должность, ФИО',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Обязанности подрядчика:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _obyazController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'работы, которые необходимо выполнить',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Стоимость работ по контракту:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Числом, словами',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Окончание работ:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _endController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'День, месяц, год',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Размер гарантийных обязательств(руб):',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _garantController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'цифры, буквы',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Срок полного исполнения заказа:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _fullEndController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'день, месяц,год',
              ),
            ),
            const Text(
              'Работы:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _workController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Работы',
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final work = _workController.text;
          final zakaz = _zakazController.text;
          final face = _faceController .text;
          final obyaz = _obyazController.text;
          final price = _priceController.text;
          final end = _endController.text;
          final garant = _garantController.text;
          final fullEnd = _fullEndController.text;
          doc(zakaz, face,  work);
         // Navigator.of(context).push(MaterialPageRoute(
           //   builder: (context) => OrgScreen()));
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }

  void doc(final zakaz,final face,
  //final obyaz ,
  //final price,
  //final end,
  //final garant,
  final work,
  //final fullEnd
      ) async {
    final f = File('assets/template.docx');
    final docx = await DocxTemplate.fromBytes(await f.readAsBytes());



    Content content = Content();
    content
      ..add(TextContent("number", "4"))
      ..add(TextContent("zakazchik", zakaz))
      ..add(TextContent("face", face))
      ..add(TextContent("work", work));
     // ..add(TextContent("price", price))
      //..add(TextContent("end", end))
     // ..add(TextContent("garant", garant))
     // ..add(TextContent("fullEnd", fullEnd));
    final docGenerated = await docx.generate(content);
    final fileGenerated = File('assets/generated.docx');
    if (docGenerated != null) await fileGenerated.writeAsBytes(docGenerated);
  }
}
