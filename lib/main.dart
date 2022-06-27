import 'package:chesskings/model/app_model.dart';
import 'package:chesskings/views/main_menu_view.dart';

import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'logic/shared_functions.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: ChessKingsApp(),
    ),
  );
  _loadFlameAssets();
}

void _loadFlameAssets() async {
  List<String> pieceImages = [];
  for (var theme in PIECE_THEMES) {
    for (var color in ['black', 'white']) {
      for (var piece in ['king', 'queen', 'rook', 'bishop', 'knight', 'pawn']) {
        pieceImages
            .add('pieces/${formatPieceTheme(theme)}/${piece}_$color.png');
      }
    }
  }
  await Flame.images.loadAll(pieceImages);
}

class ChessKingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoApp(
      title: 'Chess Kings',
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(fontFamily: 'Jura', fontSize: 16),
          pickerTextStyle: TextStyle(fontFamily: 'Jura'),
        ),
      ),
      home: MainMenuView(),
    );
  }
}
