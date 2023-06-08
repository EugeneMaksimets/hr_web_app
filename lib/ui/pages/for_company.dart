import 'package:flutter/material.dart';
import 'package:hr_test/constants/assets.dart';
import 'package:hr_test/constants/fonts.dart';
import 'package:hr_test/constants/strings.dart';
import 'package:hr_test/constants/text_styles.dart';
import 'package:hr_test/service/language_service.dart';
import 'package:hr_test/ui/old/company.dart';
import 'package:hr_test/ui/contact.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/executive_search.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/head_hunting.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/mass_recruitment.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/recruitment.dart';
import 'package:hr_test/ui/pages/for_company_img_button_pages/staff_outsoursing.dart';
import 'package:hr_test/ui/pages/for_employee.dart';
import 'package:hr_test/ui/privacy.dart';
import 'package:hr_test/utils/screen/screen_utils.dart';
import 'package:hr_test/widgets/responsive_widget.dart';
import 'dart:html' as html;

import '../home.dart';
import '../old/hr.dart';
import 'article_pages/cv_starter_page.dart';
import 'article_pages/preparing_for_interview_page.dart';
import 'article_pages/successful_interview_page.dart';
import 'bottom_buttons_pages/about_hr_library_page.dart';

class ForCompanyPage extends StatefulWidget {
  final BuildContext context;

  ForCompanyPage(this.context);

  @override
  _ForCompanyPage createState() => _ForCompanyPage();
}

class _ForCompanyPage extends State<ForCompanyPage> {
  var isHoveredImageButton =
      List<bool>.filled(Strings.text_for_button_image.length, false);
  var isHoveredTextButton = List<bool>.filled(Strings.offers_way.length, false);
  var isHoveredTextWithButton =
      List<bool>.filled(Strings.text_about_offer.length, false);
  var isHoveredTextButtonButFirst =
      List<bool>.filled(Strings.why_we_offer.length, false);
  var isHoveredTextButtonButSecond =
      List<bool>.filled(Strings.why_we_offer.length, false);
  var isHoveredTextButtonButThird =
      List<bool>.filled(Strings.why_we_offer.length, false);
  var isHovered = false;
  var isHoveredCall = false;
  var paddingForDoubleText = 170.0;

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
            color: Colors.deepOrange,
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
  } //Screen Methods:-------------------------------------------------------------

  Widget _buildTextHead(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [Colors.black, Colors.black87],
        ),
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: Strings.offer_our_title,
                style: TextStyles.heading.copyWith(
                  fontFamily: Fonts.nexa_light,
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: Strings.employee_agency_title,
                style: TextStyles.heading.copyWith(
                  color: Colors.deepOrange,
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
                ),
              ),
            ],
          ),
        ),
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
          // SizedBox(
          // height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
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
        SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 0.0 : 24.0),
        Expanded(
          child: !ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child:
                              _buildImageButtons(Strings.text_for_button_image),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              _buildTextOurOffer(),
                              SizedBox(height: 20.0),
                              _buildTextButtonsWithArrow(
                                  Strings.offers_way,
                                  isHoveredTextButton,
                                  Colors.black,
                                  Colors.deepOrange,
                                  20.0,
                                  MainAxisAlignment.start,
                                  14,
                                  20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.0),
                    Expanded(
                      flex: 1,
                      child: _buildTextWithButton(Strings.text_about_offer,
                          Strings.text_more_about_offer),
                    ),
                    SizedBox(height: 40),
                    _buildContactUs(),
                    // SizedBox(height: 24),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SizedBox(height: 24.0),
                    _buildImageButtons(Strings.text_for_button_image),
                    SizedBox(height: 24.0),
                    _buildTextOurOffer(),
                    SizedBox(height: 24.0),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        // Промежуток между текстом и кнопкой
                        child: _buildTextButtonsWithArrow(
                            Strings.offers_way,
                            isHoveredTextButton,
                            Colors.black,
                            Colors.deepOrange,
                            20,
                            MainAxisAlignment.start,
                            14,
                            20),
                      ),
                    ),

                    SizedBox(height: 24.0),
                    _buildTextWithButton(Strings.text_about_offer,
                        Strings.text_more_about_offer),
                    SizedBox(height: 24),
                    _buildContactUs(),
                    SizedBox(height: 24),
                  ],
                ),
        ),
        SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 24.0 : 48.0),
        _buildBottomInfo(),
      ],
    );
  }

  Widget _buildTextOurOffer() {
    return Text(
      Strings.our_offer,
      style: TextStyles.logo.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 20 : 30.0,
        color: Colors.black,
      ),
    );
  }

  Widget _buildImageButtons(List<String> textForButton) {
    var buttons = <Widget>[];

    for (var i = 0; i < textForButton.length; i++) {
      buttons.add(
        MouseRegion(
          onHover: (event) {
            setState(() {
              isHoveredImageButton[i] = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHoveredImageButton[i] = false;
            });
          },
          child: Container(
            height: 120, // Задайте желаемую высоту кнопки
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.background_1 + i.toString() + '.jpg'),
                fit: BoxFit.cover,
              ),
              border: isHoveredImageButton[i]
                  ? Border.all(color: Colors.deepOrange, width: 4.0)
                  : null,
            ),
            child: InkWell(
              onTap: () {
                _validatorImagePage(i);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ContactPage(context)),
                // );
              },
              onHighlightChanged: (isPressed) {
                setState(() {
                  isHoveredImageButton[i] = true; // TODO TEST
                });
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    textForButton[i],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyles.menu_item.copyWith(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 12 : 16.0,
                      color: isHoveredImageButton[i]
                          ? Colors.deepOrange
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      children: buttons,
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

  Widget _buildTextWithButton(
      List<String> offersTitle, List<String> offerMore) {
    var buttons = <Widget>[];

    for (var i = 0; i < offersTitle.length; i++) {
      buttons.add(
        MouseRegion(
          onHover: (event) {
            setState(() {
              isHoveredTextWithButton[i] = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHoveredTextWithButton[i] = false;
            });
          },
          child: ResponsiveWidget.isSmallScreen(context)
              ? InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ContactPage(context), // TODO create validator page top button
                      ),
                    );
                  },
                  onHighlightChanged: (isPressed) {
                    setState(() {
                      isHoveredTextWithButton[i] = true; //TODO TEST
                    });
                  },
                  child: Container(
                    height: ResponsiveWidget.isSmallScreen(context) ? 82 : 150,
                    decoration: BoxDecoration(
                      border: isHoveredTextWithButton[i]
                          ? Border.all(color: Colors.deepOrange, width: 3.0)
                          : Border.all(color: Color(0xFF3B3B3B), width: 1.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [Colors.black, Colors.black87],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 8.0,
                                top: ResponsiveWidget.isSmallScreen(context)
                                    ? 0
                                    : 25),
                            // Промежуток между текстом и кнопкой
                            child:
                                _buildDoubleText(offersTitle[i], offerMore[i]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactPage(
                                    context), //TODO create validator page
                              ),
                            );
                          },
                          child: isHoveredTextWithButton[i] &&
                                  !ResponsiveWidget.isSmallScreen(context)
                              ? Tooltip(
                                  message: Strings.learn_more,
                                  textStyle: TextStyles.menu_item.copyWith(
                                    fontSize:
                                        ResponsiveWidget.isSmallScreen(context)
                                            ? 10
                                            : 20.0,
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: ResponsiveWidget.isSmallScreen(
                                                context)
                                            ? 0
                                            : paddingForDoubleText),
                                    child: MouseRegion(
                                      onHover: (event) {
                                        setState(() {
                                          isHovered = true;
                                        });
                                      },
                                      onExit: (event) {
                                        setState(() {
                                          isHovered = false;
                                        });
                                      },
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                            BorderSide(
                                                color: Colors.deepOrange,
                                                width: 2.0),
                                          ),
                                          minimumSize:
                                              MaterialStateProperty.all(
                                                  Size(200, 50)),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.all(10)),
                                          backgroundColor: isHovered
                                              ? MaterialStateProperty.all<
                                                  Color>(Colors.deepOrange)
                                              : MaterialStateProperty.all<
                                                  Color>(Colors.black),
                                        ),
                                        child: Text(
                                          Strings.more,
                                          style: TextStyles.menu_item.copyWith(
                                            fontSize:
                                                ResponsiveWidget.isSmallScreen(
                                                        context)
                                                    ? 10
                                                    : 20.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    '',
                                    style: TextStyles.menu_item.copyWith(
                                      fontSize: ResponsiveWidget.isSmallScreen(
                                              context)
                                          ? 10
                                          : 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  height: ResponsiveWidget.isSmallScreen(context) ? 82 : 150,
                  decoration: BoxDecoration(
                    border: isHoveredTextWithButton[i]
                        ? Border.all(color: Colors.deepOrange, width: 3.0)
                        : Border.all(color: Color(0xFF3B3B3B), width: 1.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [Colors.black, Colors.black87],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 8.0,
                              top: ResponsiveWidget.isSmallScreen(context)
                                  ? 0
                                  : 25),
                          // Промежуток между текстом и кнопкой
                          child: _buildDoubleText(offersTitle[i], offerMore[i]),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContactPage(context),
                            ),
                          );
                        },
                        child: isHoveredTextWithButton[i] &&
                                !ResponsiveWidget.isSmallScreen(context)
                            ? Tooltip(
                                message: Strings.learn_more,
                                textStyle: TextStyles.menu_item.copyWith(
                                  fontSize:
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? 10
                                          : 20.0,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: ResponsiveWidget.isSmallScreen(
                                              context)
                                          ? 0
                                          : paddingForDoubleText),
                                  child: MouseRegion(
                                    onHover: (event) {
                                      setState(() {
                                        isHovered = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        isHovered = false;
                                      });
                                    },
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                          BorderSide(
                                              color: Colors.deepOrange,
                                              width: 2.0),
                                        ),
                                        minimumSize: MaterialStateProperty.all(
                                            Size(200, 50)),
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.all(10)),
                                        backgroundColor: isHovered
                                            ? MaterialStateProperty.all<Color>(
                                                Colors.deepOrange)
                                            : MaterialStateProperty.all<Color>(
                                                Colors.black),
                                      ),
                                      child: Text(
                                        Strings.more,
                                        style: TextStyles.menu_item.copyWith(
                                          fontSize:
                                              ResponsiveWidget.isSmallScreen(
                                                      context)
                                                  ? 10
                                                  : 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  '',
                                  style: TextStyles.menu_item.copyWith(
                                    fontSize:
                                        ResponsiveWidget.isSmallScreen(context)
                                            ? 10
                                            : 20.0,
                                    color: Colors.white,
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

  Widget _buildDoubleText(String firstText, String secondText) {
    var underline = '';
    for (var i = 0; i < firstText.length; i++) {
      underline = underline + '_';
    }
    ;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Выравнивание текста по левому краю
      children: [
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWidget.isSmallScreen(context)
                  ? 0
                  : paddingForDoubleText),
          child: Text(
            firstText,
            style: TextStyles.menu_item.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 15 : 25.0,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWidget.isSmallScreen(context)
                  ? 0
                  : paddingForDoubleText,
              bottom: 1.0),
          child: Text(
            underline,
            style: TextStyles.menu_item.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 5 : 20.0,
              color: Colors.deepOrange,
              decoration: TextDecoration.underline,
              decorationColor: Colors.deepOrange,
              decorationThickness: 4,
            ),
          ),
        ),
        SizedBox(height: 10), // Расстояние между текстами
        Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWidget.isSmallScreen(context)
                  ? 0
                  : paddingForDoubleText),
          child: Text(
            secondText,
            style: TextStyles.menu_item.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 10 : 15.0,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
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
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 11 : 20.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 15), // Пространство между текстом и кнопкой
                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.deepOrange, width: 2.0),
                      ),
                      minimumSize: MaterialStateProperty.all(
                          ResponsiveWidget.isSmallScreen(context)
                              ? Size(140, 50)
                              : Size(200, 50)),
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
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 10
                              : 20.0,
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
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 11 : 20.0,
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
                      minimumSize: MaterialStateProperty.all(
                          ResponsiveWidget.isSmallScreen(context)
                              ? Size(140, 50)
                              : Size(200, 50)),
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
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 10
                              : 20.0,
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

  void _validatorImagePage(int i) {
    switch (i) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecruitmentPage(context)),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MassRecruitmentPage(context)),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExecutiveSearchPage(context)),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HeadHuntingPage(context)),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StaffOutsourcingPage(context)),
        );
        break;
    }
  }
}
