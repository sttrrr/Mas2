import 'package:docum/chat_screen.dart';
import 'package:docum/home_page.dart';
import 'package:docum/profile.dart';
import 'package:docum/users/home_user_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
        name: 'Главная',
        baseStyle: TextStyle(fontSize: 18,color: Colors.white60,),
        selectedStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
      ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Чат',
            baseStyle: TextStyle(fontSize: 18,color: Colors.white60,),
            selectedStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)
        ), ChatScreens(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Пользователь',
            baseStyle: TextStyle(fontSize: 18,color: Colors.white60,),
            selectedStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)
        ), HomeUserPage(),

      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      leadingAppBar: Icon(Icons.menu, color: Colors.black),
        screens: _pages,

        actionsAppBar: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: IconButton(

                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Profile()));
                  }, icon: Icon(Icons.person),
                ),
              ),
            ),
          )
        ],
        elevationAppBar: 0,
        slidePercent: 40,
        backgroundColorAppBar: Colors.white,
        backgroundColorMenu: Color.fromARGB(106, 76, 175, 79),
    );
  }
}

