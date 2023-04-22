import 'package:docum/resources/resources.dart';
import 'package:docum/side.dart';
import 'package:docum/widgets/media_stack.dart';
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
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: SideMenu(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Icon(
                  Icons.person,
                  color: Colors.indigo,
                  size: 23,
                ),
              ),
            ),
          )
        ],
      ),
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
                Text("Мои документы",
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
               MediaStack(image: Images.document, color: Color.fromARGB(106, 76, 175, 79), media: 'Документы', items: "0", privacy: "Private Folder",  icon: Icon(Icons.lock_clock_outlined, color: Colors.green[500],)),
                  SizedBox(width: 15),
                   MediaStack(image: Images.person, color: Color.fromARGB(148, 255, 193, 79), media: 'Сотрудники ', items: "0", privacy: "Private Folder",  icon: Icon(Icons.lock_clock_outlined, color: Colors.amber[800],)),
                   SizedBox(width: 15),
                    MediaStack(image: Images.request, color: Color.fromARGB(104, 223, 64, 79), media: 'Заявки', items: "0", privacy: "Private Folder",  icon: Icon(Icons.lock_clock_outlined, color: Colors.purpleAccent[500],))
                ],
              ),
            ),
            SizedBox(height: 25,),
            Text("Последнее :",
            style: TextStyle(
              fontSize: 25,
             
            ),)
          ],
        ),
      ),
      ),
    );
  }
}