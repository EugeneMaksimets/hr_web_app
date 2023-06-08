import 'package:flutter/material.dart';
import 'package:hr_test/constants/assets.dart';
import 'package:hr_test/constants/fonts.dart';
import 'package:hr_test/constants/strings.dart';
import 'package:hr_test/constants/strings_interviews.dart';
import 'package:hr_test/constants/text_styles.dart';
import 'package:hr_test/service/language_service.dart';
import 'package:hr_test/service/mail_send_service.dart';
import 'package:hr_test/ui/contact.dart';
import 'package:hr_test/ui/home.dart';
import 'package:hr_test/ui/pages/article_pages/preparing_for_interview_page.dart';
import 'package:hr_test/ui/pages/article_pages/successful_interview_page.dart';
import 'package:hr_test/ui/pages/bottom_buttons_pages/about_hr_library_page.dart';
import 'package:hr_test/ui/pages/for_company.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/executive_search.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/head_hunting.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/recruitment.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/staff_outsoursing.dart';
import 'package:hr_test/ui/pages/for_employee.dart';
import 'package:hr_test/ui/privacy.dart';
import 'package:hr_test/utils/screen/screen_utils.dart';
import 'package:hr_test/widgets/responsive_widget.dart';
import 'dart:html' as html;

class CvStarterInterview extends StatefulWidget {
  final BuildContext context;

  CvStarterInterview(this.context);

  @override
  _CvStarterInterview createState() => _CvStarterInterview();
}

class _CvStarterInterview extends State<CvStarterInterview> {
  var isHoveredTextButtonButFirst =
  List<bool>.filled(Strings.why_we_offer.length, false);
  var isHoveredTextButtonButSecond =
  List<bool>.filled(Strings.why_we_offer.length, false);
  var isHoveredTextButtonButThird =
  List<bool>.filled(Strings.why_we_offer.length, false);
  var isHoveredCall = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0;
    return Material(
      color: Color(0xFFF7F8FA),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _buildAppBar(context),
          drawer: _buildDrawer(context),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: _buildBody(context),
          ),
          // }),
        ),
      ),
    );
  }

  //AppBar Methods:-------------------------------------------------------------
  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      title: _buildTitle(),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions:
      !ResponsiveWidget.isSmallScreen(context) ? _buildActions() : null,
    );
  }

  Widget _buildTitle() {
    return RichText(
      text: TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: Strings.company_name,
            style: TextStyles.logo.copyWith(
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: Strings.y,
            style: TextStyles.logo.copyWith(
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildActions() {
    return <Widget>[
      MaterialButton(
        child: Text(
          Strings.menu_home,
          style: TextStyles.menu_item.copyWith(
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_for_company,
          style: TextStyles.menu_item.copyWith(
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForCompanyPage(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_for_hr,
          style: TextStyles.menu_item.copyWith(
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForEmployee(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_privacy,
          style: TextStyles.menu_item.copyWith(
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PrivacyPage(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_contact,
          style: TextStyles.menu_item.copyWith(
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactPage(context)),
          );
        },
      ),
      MaterialButton(
          child: Text(
            Strings.language[LanguageService.number],
            style: TextStyles.menu_item,
          ),
          onPressed: () {
            LanguageService.number = ++LanguageService.number;
            LanguageService.validateLanguage();
            LanguageService.changeLanguage();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage(context)),
            );
          })
    ];
  }

  Widget _buildDrawer(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Drawer(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: _buildActions(),
      ),
    )
        : null;
  }

  //Screen Methods:-------------------------------------------------------------
  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveWidget(
        largeScreen: _buildLargeScreen(context),
        mediumScreen: _buildMediumScreen(context),
        smallScreen: _buildSmallScreen(context),
      ),
    );
  }

  //Screen Methods:-------------------------------------------------------------

  Widget _buildTextHead(BuildContext context) {
    return Container(
      // height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.background_it_page_img),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: Strings.employee_agency,
                    style: TextStyles.heading.copyWith(
                      fontFamily: Fonts.nexa_light,
                      fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: ResponsiveWidget.isSmallScreen(context)
                        ? Strings.HR_AGENCY_WITH_ENTER
                        : Strings.HR_AGENCY,
                    style: TextStyles.heading.copyWith(
                      color: Colors.deepOrange,
                      fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            Strings.recruiting_for_best,
            style: TextStyles.menu_item.copyWith(
              fontFamily: Fonts.nexa_light,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 20 : 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 24 : 34),
          Text(
            Strings.article_text,
            style: TextStyles.heading.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 26 : 36.0,
              color: Colors.white,
            ),
          ),
          _buildUnderlineOrange(Strings.article_text.length),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildLargeScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _buildTextHead(context),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(flex: 1, child: _buildContent(context)),
                // _buildIllustration(),
              ],
            ),
          ),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildMediumScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _buildTextHead(context),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(flex: 1, child: _buildContent(context)),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildSmallScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildTextHead(context),
          Expanded(flex: 1, child: _buildContent(context)),
          Divider(),
          _buildCopyRightText(context),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
          _buildSocialIcons(),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 4.0 : 4.0),
        Expanded(
            child: Column(
              children: [
                _buildInterview(),
                SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 30 : 40),
                _buildContactUs(),
              ],
            )
        ),
        SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 24.0 : 48.0),
        _buildBottomInfo(),
      ],
    );
  }

  Widget _buildInterview() {
    return Container(
      padding: EdgeInsets.only(bottom: 50, top: 50),
      child: Padding(
        padding: EdgeInsets.only(
            right: ResponsiveWidget.isSmallScreen(context) ? 50.0 : 150,
            left: ResponsiveWidget.isSmallScreen(context) ? 50.0 : 150),
        child: Column(
          children: [
            Text(
              Strings.cv_starter_interview_text,
              style: TextStyles.company.copyWith(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 26 : 36.0,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 24),
            _buildColumnTextFromList(
                StringsInterview.cv_starter_interview_text_more, Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnTextFromList(List<String> textList, Color color) {
    var tmp = <Widget>[];
    for (var i = 0; i < textList.length; i++) {
      tmp.add(
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(textList[i],
              style: TextStyles.menu_item.copyWith(
                color: color,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 10 : 15.0,
              )),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tmp,
    );
  }

  Widget _textBuilder(String text, TextStyle textStyle, double minFontSize,
      double maxFontSize, Color color) {
    return Text(
      text,
      style: textStyle.copyWith(
        fontSize:
        ResponsiveWidget.isSmallScreen(context) ? minFontSize : maxFontSize,
        color: color,
      ),
    );
  }

  Widget _buildTextButtonsWithArrow(
      List<String> stringsList,
      List<bool> hoveredValidation,
      Color firstColor,
      Color secondColor,
      double sizeArrow,
      MainAxisAlignment screenAlignment,
      double sizeFrontSmall,
      double sizeFrontBig) {
    var buttons = <Widget>[];

    for (var i = 0; i < stringsList.length; i++) {
      buttons.add(
        MouseRegion(
          onHover: (event) {
            setState(() {
              hoveredValidation[i] = true;
            });
          },
          onExit: (event) {
            setState(() {
              hoveredValidation[i] = false;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: screenAlignment,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    Assets.arrow_right,
                    height: ScreenUtil.getInstance().setWidth(sizeArrow),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  // hoverColor: Colors.deepOrange.withAlpha(50),
                  onTap: () {
                    _validatorBottomTextButton(hoveredValidation, i);
                  },
                  onHighlightChanged: (isPressed) {
                    setState(() {
                      hoveredValidation[i] = true;
                    });
                  },
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      stringsList[i],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyles.menu_item.copyWith(
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? sizeFrontSmall
                            : sizeFrontBig,
                        // color: Colors.black,
                        color: hoveredValidation[i] ? secondColor : firstColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: buttons,
    );
  }

  // -----------------------------------------------------------------------------

  Widget _buildContactUs() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [Colors.white12, Colors.white38],
        ),
      ),
      child: Center(
        child: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // Центрирование по горизонтали
          children: [
            Icon(Icons.call),
            SizedBox(width: 10), // Пространство между иконкой и текстом
            Text(
              Strings.contact_us_offer,
              style: TextStyles.menu_item.copyWith(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 15), // Пространство между текстом и кнопкой
            ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: Colors.deepOrange, width: 2.0),
                ),
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                backgroundColor: isHoveredCall
                    ? MaterialStateProperty.all<Color>(Color(0xFFFA4812))
                    : MaterialStateProperty.all<Color>(Colors.deepOrange),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContactPage(context)),
                );
              },
              child: MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHoveredCall = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHoveredCall = false;
                  });
                },
                child: Text(
                  Strings.call,
                  style: TextStyles.menu_item.copyWith(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Центрирование по горизонтали
          children: [
            Icon(Icons.call),
            SizedBox(width: 10),
            // Пространство между иконкой и текстом
            Text(
              Strings.contact_us_offer,
              style: TextStyles.menu_item.copyWith(
                fontSize: 11,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 15,
              height: 15,
            ),
            // Пространство между текстом и кнопкой
            ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: Colors.deepOrange, width: 2.0),
                ),
                minimumSize: MaterialStateProperty.all(Size(140, 50)),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                backgroundColor: isHoveredCall
                    ? MaterialStateProperty.all<Color>(Color(0xFFFA4812))
                    : MaterialStateProperty.all<Color>(Colors.deepOrange),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContactPage(context)),
                );
              },
              child: MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHoveredCall = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHoveredCall = false;
                  });
                },
                child: Text(
                  Strings.call,
                  style: TextStyles.menu_item.copyWith(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomInfo() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [Colors.black, Colors.black87],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          !ResponsiveWidget.isSmallScreen(context)
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200, width: 200),
              Expanded(
                child: _buildColumnBottomText(
                  Strings.why_we,
                  Strings.why_we_offer,
                  isHoveredTextButtonButFirst,
                ),
              ),
              Expanded(
                child: _buildColumnBottomText(
                  Strings.who_give_work,
                  Strings.who_give_work_list,
                  isHoveredTextButtonButSecond,
                ),
              ),
              Expanded(
                child: _buildColumnBottomText(
                  Strings.who_worker,
                  Strings.who_worker_list,
                  isHoveredTextButtonButThird,
                ),
              ),
            ],
          )
              : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: _buildColumnBottomText(
                  Strings.why_we,
                  Strings.why_we_offer,
                  isHoveredTextButtonButFirst,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: _buildColumnBottomText(
                  Strings.who_give_work,
                  Strings.who_give_work_list,
                  isHoveredTextButtonButSecond,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: _buildColumnBottomText(
                  Strings.who_worker,
                  Strings.who_worker_list,
                  isHoveredTextButtonButThird,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumnBottomText(
      String text, List<String> listButton, List<bool> isHoveredList) {
    return Column(
      crossAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 15),
        Text(
          text,
          style: TextStyles.menu_item.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        _buildUnderline(),
        SizedBox(height: 15),
        _buildTextButtonsWithArrow(
            listButton,
            isHoveredList,
            Colors.white,
            Colors.deepOrange,
            10,
            ResponsiveWidget.isSmallScreen(context)
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            13,
            15),
      ],
    );
  }

  Widget _buildUnderline() {
    var underlineOrange = '_______';
    var underlineGrey = '______________';
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: underlineOrange,
            style: TextStyles.menu_item.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 5 : 20.0,
              color: Colors.deepOrange,
              decoration: TextDecoration.underline,
              decorationColor: Colors.deepOrange,
              decorationThickness: 6,
            ),
          ),
          TextSpan(
            text: underlineGrey,
            style: TextStyles.menu_item.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 5 : 20.0,
              color: Colors.grey,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,
              decorationThickness: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUnderlineOrange(int sizeUnderline) {
    var underlineOrange = '';
    for (var i = 0; i < sizeUnderline; i++) {
      underlineOrange += '_';
    }
    return Text(
      underlineOrange,
      style: TextStyles.menu_item.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 5 : 20.0,
        color: Colors.deepOrange,
        decoration: TextDecoration.underline,
        decorationColor: Colors.deepOrange,
        decorationThickness: 6,
      ),
    );
  }

  // Footer Methods:------------------------------------------------------------
  Widget _buildFooter(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                child: _buildCopyRightText(context),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: _buildSocialIcons(),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCopyRightText(BuildContext context) {
    return Text(
      Strings.rights_reserved,
      style: TextStyles.body1.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 8 : 10.0,
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            html.window.open(Strings.link_linkedin, "LinkedIn");
          },
          child: Image.network(
            Assets.linkedin,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            html.window.open(Strings.link_gmail, "Github");
          },
          child: Image.network(
            Assets.google,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            html.window.open(Strings.link_twitter, "Twitter");
          },
          child: Image.network(
            Assets.twitter,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
      ],
    );
  }

  // --------------------------------- VALIDATOR -------------------------------
  void _validatorBottomTextButton(List<bool> isHovered, int i) {
    if(isHovered == isHoveredTextButtonButFirst) {
      switch (i) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(context),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutsUsPage(context),
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PrivacyPage(context),
            ),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactPage(context),
            ),
          );
          break;
      }
    } else if (isHovered == isHoveredTextButtonButSecond) {
      switch (i) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecruitmentPage(context),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExecutiveSearchPage(context),
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HeadHuntingPage(context),
            ),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StaffOutsourcingPage(context),
            ),
          );
          break;
      }
    } else if (isHovered == isHoveredTextButtonButThird) {
      switch (i) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ForEmployee(context),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessInterview(context),
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PreparingInterview(context),
            ),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CvStarterInterview(context),
            ),
          );
          break;
      }
    }
  }
}
