import 'package:flutter/material.dart';
import 'package:hr_test/ui/home.dart';
import 'package:hr_test/ui/pages/article_pages/cv_starter_page.dart';
import 'package:hr_test/ui/pages/article_pages/preparing_for_interview_page.dart';
import 'package:hr_test/ui/pages/article_pages/successful_interview_page.dart';
import 'package:hr_test/ui/pages/bottom_buttons_pages/about_hr_library_page.dart';
import 'package:hr_test/ui/pages/double_text_button_pages/employee_data_page.dart';
import 'package:hr_test/ui/pages/double_text_button_pages/hr_consulting_pages.dart';
import 'package:hr_test/ui/pages/double_text_button_pages/outstaffing_page.dart';
import 'package:hr_test/ui/pages/double_text_button_pages/research_page.dart';
import 'package:hr_test/ui/pages/double_text_button_pages/scan_cv_page.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/executive_search.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/head_hunting.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/recruitment.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/staff_outsoursing.dart';
import 'package:hr_test/ui/pages/for_company_text_button/administration_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/advertising_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/building_manager_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/engineer_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/financier_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/hr_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/it_employee_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/logistics_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/sales_manager.dart';
import 'package:hr_test/ui/pages/for_company_text_button/top_manager_page.dart';
import 'package:hr_test/ui/pages/for_company_text_button/worker_page.dart';

import 'package:hr_test/utils/screen/screen_utils.dart';

import 'service/language_service.dart';
import 'ui/pages/for_company_img_button_pages/mass_recruitment.dart';

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
    return HomePage(context); //todo return home page
  }
}
