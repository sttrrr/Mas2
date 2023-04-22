import 'package:flutter/material.dart';


//import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import 'home_page.dart';


class Profile extends StatelessWidget {
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