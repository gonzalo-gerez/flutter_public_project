import 'package:flutter/material.dart';
import 'package:flutter_public_repository/core/resources/theme_colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  final Size preferredSize;

  final String title;

  CustomAppBar(
    this.title, {
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: ThemeColors.primaryColor,
      automaticallyImplyLeading: true,
    );
  }
}
