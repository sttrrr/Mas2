
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class SideMenu extends StatelessWidget {
  const SideMenu ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: ()=> ZoomDrawer.of(context)!.toggle(),
        icon: Icon(Icons.menu, color: Colors.grey[700],));
  }
}
