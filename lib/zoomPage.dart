import 'package:docum/home_page.dart';
import 'package:docum/menu_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZoomPage extends StatelessWidget {
  const ZoomPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      slideWidth: 300,
        style: DrawerStyle.defaultStyle,
        showShadow: true,
        moveMenuScreen: false,
        menuScreen: MenuPage(), mainScreen: HomePage());
  }
}
