import 'package:chesskings/model/app_model.dart';
import 'package:chesskings/views/components/main_menu_view/game_options.dart';
import 'package:chesskings/views/components/shared/bottom_padding.dart';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'components/main_menu_view/main_menu_buttons.dart';

class MainMenuView extends StatefulWidget {
  @override
  _MainMenuViewState createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, appModel, child) {
        return Container(
          decoration: BoxDecoration(gradient: appModel.theme.background),
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    10, MediaQuery.of(context).padding.top + 10, 10, 0),
                child: Text('CHESS KINGS',style: TextStyle(fontSize:38,fontWeight: FontWeight.w900),),//Image.asset('assets/images/logo.png'),
              ),
              SizedBox(height: 30),
              GameOptions(appModel),
              SizedBox(height: 20),
              MainMenuButtons(appModel),
              BottomPadding(),
            ],
          ),
        );
      },
    );
  }
}
