import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_2020/home_screen/Components/body.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: HomeBody(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        onPressed: null,
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      title: Text(title),
      actions: <Widget>[
        IconButton(
          onPressed: null,
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
      ],
    );
  }
}
