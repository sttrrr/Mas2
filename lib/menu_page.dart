import 'package:docum/home_page.dart';
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
        baseStyle: TextStyle(fontSize: 18),
        selectedStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)
      ), HomePage(),

      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Чат',
            baseStyle: TextStyle(fontSize: 18,color: Colors.white60,),
            selectedStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)
        ), HomePage(),

      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        actionsAppBar: <Widget>[
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
      elevationAppBar: 0,
        backgroundColorAppBar: Colors.white,
        backgroundColorMenu: CupertinoColors.systemIndigo,
    );
  }
}

