import 'package:flutter/material.dart';

class AppTheme {
  String name;
  LinearGradient background;
  Color lightTile;
  Color darkTile;
  Color moveHint;
  Color checkHint;
  Color latestMove;
  Color border;

  AppTheme({
    this.name,
    this.background,
    this.lightTile = const Color(0xFFC9B28F),
    this.darkTile = const Color(0xFF69493b),
    this.moveHint = const Color(0xdd5c81c4),
    this.latestMove = const Color(0xccc47937),
    this.checkHint = const Color(0x88ff0000),
    this.border = const Color(0xffffffff),
  });
}

List<AppTheme> get themeList {
  var themeList = <AppTheme>[


    AppTheme(
      name: 'Blue',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff236e91),
          Color(0xff0f4964),
        ],
      ),
    ),
    AppTheme(
      name: 'Green',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff25804f),
          Color(0xff00584f),
        ],
      ),
    ),


    AppTheme(
      name: 'Black & White',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffb2b2b2),
          Color(0xff4e4e4e),
        ],
      ),
      lightTile: Color(0xffb2b2b2),
      darkTile: Color(0xff808080),
      moveHint: Color(0xdd555555),
      checkHint: Color(0xff333333),
      latestMove: Color(0xdddddddd),
    ),


    AppTheme(
      name: 'Dark',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff1e1e1e),
          Color(0xff2e2e2e),
        ],
      ),
      border: Color(0xff888888),
    ),
    AppTheme(
      name: 'Light',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffaeaeae),
          Color(0xff8e8e8e),
        ],
      ),
    ),




    AppTheme(
      name: 'AMOLED',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff000000),
          Color(0xff000000),
        ],
      ),
      lightTile: Color(0xff444444),
      darkTile: Color(0xff333333),
      border: Color(0xff555555),
    ),
    AppTheme(
      name: 'Lewis',
      background: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff423428),
          Color(0xff423428),
        ],
      ),
      lightTile: Color(0xffdbd1c1),
      darkTile: Color(0xffab3848),
      moveHint: Color(0xdd800b0b),
      latestMove: Color(0xddcc9c6c),
      border: Color(0xffbdaa8c),
    ),


  ];
  themeList.sort((a, b) => a.name.compareTo(b.name));
  return themeList;
}
