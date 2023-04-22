import 'package:docum/docScreen.dart';
import 'package:docum/resources/resources.dart';
import 'package:docum/services/document_page.dart';
import 'package:docum/widgets/media_stack.dart';
import 'package:docum/widgets/modal_bottom.dart';
import 'package:docum/widgets/tender_widget.dart';
import 'package:docum/zayavky.dart';
import 'package:flutter/material.dart';

import '../widgets/big_text_widget.dart';
import '../widgets/small_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFF63cb99),
          child: IconButton(

            color: Colors.white, onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DocScreen()));
          }, icon: Icon(Icons.add),
          ),
        ),),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BigText(text: "Главная"),
                  Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.grey[500],
                  )
                ],
              ),
              SizedBox(height: 20,),

              Container(
                height: 200,
                child:ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DocumentPage()));

                      },
                   child: MediaStack(image: Images.document, color: Color.fromARGB(106, 76, 175, 79), media: 'Документы',  privacy: "Private Folder"),),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DocumentPage()));

                      },
                      child: MediaStack(image: Images.person, color: Color.fromARGB(148, 255, 193, 79), media: 'Сотрудники ',  privacy: "Private Folder"),),

                    SizedBox(width: 15),
                GestureDetector(
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ZayavkyPage()));

            },
                    child: MediaStack(image: Images.request, color: Color.fromARGB(104, 223, 64, 79), media: 'Заявки',  privacy: "Private Folder"))


                  ],
                ),
              ),
              SizedBox(height: 25,),
              BigText(text: "Активные тендеры",),
              SizedBox(height: 25,),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                        ),
                          context: context,
                          builder: (context)=> ModalBottom());
                    },
                    child: TenderWidget(name: "Установка дорожных ограждений", time: "2 месяца", conditions: "Рабочая сила", price: "1566 руб/м.п"),
                  ),

                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                          ),
                          context: context,
                          builder: (context)=> ModalBottom());
                    },
                    child: TenderWidget(name: "Установка дорожных ограждений", time: "2 месяца", conditions: "Рабочая сила", price: "1566 руб/м.п"),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                          ),
                          context: context,
                          builder: (context)=> ModalBottom());
                    },
                    child: TenderWidget(name: "Установка дорожных ограждений", time: "2 месяца", conditions: "Рабочая сила", price: "1566 руб/м.п"),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                          ),
                          context: context,
                          builder: (context)=> ModalBottom());
                    },
                    child: TenderWidget(name: "Установка дорожных ограждений", time: "2 месяца", conditions: "Рабочая сила", price: "1566 руб/м.п"),
                  ),
                  SizedBox(height: 15,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}