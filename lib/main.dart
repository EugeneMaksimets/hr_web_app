import 'package:flutter/material.dart';
import 'package:hr_test/ui/home.dart';

import 'package:hr_test/utils/screen/screen_utils.dart';

import 'service/language_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColorBrightness: Brightness.light,
          accentColorBrightness: Brightness.light
      ),
      home: MyAppChild(),
    );
  }
}

class MyAppChild extends StatefulWidget {

  @override
  _MyAppChildState createState() => _MyAppChildState();
}

class _MyAppChildState extends State<MyAppChild> {
  @override
  Widget build(BuildContext context) {
    LanguageService.validateLanguage();
    LanguageService.changeLanguage();
    // instantiating ScreenUtil singleton instance, as this will be used throughout
    // the app to get screen size and other stuff
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return HomePage(context);
  }
}
