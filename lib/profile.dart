import 'package:flutter/material.dart';


//import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import 'home_page.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
        Color(0xFF42C1C0),
    Color(0xFF87CF80),
    ],
    ),
    ),
    child: Scaffold(

      backgroundColor: Colors.white.withOpacity(0.9),
    appBar: PreferredSize(preferredSize: const
    Size.fromHeight(94.0),
    child: AppBar(
      toolbarHeight: 94.0,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(),
      centerTitle: true,
      leading: IconButton(
    icon: Icon(
        Icons.keyboard_backspace,

        color: Color(0xFF42C1C0),
    ), onPressed: ()=> Get.back() ),
      title: const Text('Профиль', style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w800, fontSize: 24,color: Colors.black)),
      backgroundColor: Colors.white,),),
        body:
        Container(
          margin: EdgeInsets.all(20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),

            Row(

              children: [

                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.png"),
                  radius: 30,
                ),
                SizedBox(width: 41),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Иван Иванов',
                      style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w800, fontSize: 24,color: Color(0xFF35353D))),
                    Text('13 лет',
                        style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 16,color: Color(0xFF35353D))),
                  ],
                ),
                SizedBox(width: 44),
                ImageIcon(

                  AssetImage("assets/edit.png"),
                  size: 25,
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Информация',
              textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w600, fontSize: 25,color: Color(0xFF35353D))
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                fixedSize: Size(398, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                          AssetImage("assets/myprofile.png")
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Мой профиль',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF35353D),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Настройка аккаунта',
              textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w800, fontSize: 25,color: Color(0xFF35353D))
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                fixedSize: Size(398, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                          AssetImage("assets/notificaion.png")
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Уведомления',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF35353D),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                fixedSize: Size(398, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                          AssetImage("assets/time.png")
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Время в приложении',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF35353D),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
               // try {
             //   await FirebaseAuth.instance.currentUser!.delete();
             // } on FirebaseAuthException catch (e) {
             //   if (e.code == 'requires-recent-login') {
             //     print('The user must reauthenticate before this operation can be executed.');
           //     }
              //}
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage()));
                },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                fixedSize: Size(398, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                          AssetImage("assets/delacc.png")
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Удалить аккаунт',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF35353D),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
               // await FirebaseAuth.instance.signOut();
               // Navigator.of(context).push(MaterialPageRoute(
                //    builder: (context) => mainScreen()));
             },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                fixedSize: Size(398, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                          AssetImage("assets/exit.png")
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Выйти',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF35353D),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),)






    ),);
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [Colors.blue, Colors.red],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}