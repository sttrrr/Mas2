import 'package:docum/widgets/document_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../docScreen.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
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
