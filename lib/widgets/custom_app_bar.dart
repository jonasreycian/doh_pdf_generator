import 'package:ais_checklist/config/palette.dart';
import 'package:ais_checklist/config/util.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text('Checklist'),
      backgroundColor: Palette.primaryColor,
      leading: IconButton(
        icon: Icon(Icons.keyboard_arrow_left),
        iconSize: screenH(32, context),
        onPressed: () {},
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
