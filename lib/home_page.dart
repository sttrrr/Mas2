import 'package:docum/docScreen.dart';
import 'package:docum/resources/resources.dart';
import 'package:docum/widgets/big_text_widget.dart';
import 'package:docum/widgets/media_stack.dart';
import 'package:docum/widgets/small_text_widget.dart';
import 'package:flutter/material.dart';

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
                  Text(
                    "Главная",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[500]
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.grey[500],
                  )
                ],
              ),
              SizedBox(height: 20,),

              Container(
                height: 250,
                child:ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MediaStack(image: Images.document, color: Color.fromARGB(106, 76, 175, 79), media: 'Документы', items: "0", privacy: "Private Folder",),
                    SizedBox(width: 15),
                    MediaStack(image: Images.person, color: Color.fromARGB(148, 255, 193, 79), media: 'Сотрудники ', items: "0", privacy: "Private Folder", ),
                    SizedBox(width: 15),
                    MediaStack(image: Images.request, color: Color.fromARGB(104, 223, 64, 79), media: 'Заявки', items: "0", privacy: "Private Folder",)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Text("Активные тендеры :",
                style: TextStyle(
                  fontSize: 25,

                ),),
              Container(
                margin: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    bottom: 20),
                child: Row(
                    children: [
                      //текст
                      Expanded(
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight:
                              Radius.circular(15),
                              bottomRight:
                              Radius.circular(15),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10,
                                right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                BigText(
                                    text: "Установка и замена барьерного ограждения"),
                                SmallText(
                                    text:
                                    "срок: 2 месяца"),
                                SmallText(
                                    text:
                                    "Условия: Рабочая сила"),
                                SmallText(
                                    text:
                                    "Цена: до 4935 руб/м.п"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}