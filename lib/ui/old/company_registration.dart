import 'package:flutter/material.dart';
import 'package:hr_test/constants/assets.dart';
import 'package:hr_test/constants/strings.dart';
import 'package:hr_test/constants/text_styles.dart';
import 'package:hr_test/service/language_service.dart';
import 'package:hr_test/ui/old/success_registration.dart';
import 'package:hr_test/utils/screen/screen_utils.dart';
import 'package:hr_test/widgets/responsive_widget.dart';
import 'dart:html' as html;

import '../../service/data.dart';
import 'company.dart';
import '../contact.dart';
import '../home.dart';
import 'hr.dart';
import '../privacy.dart';

class CompanyRegistrationPage extends StatefulWidget {
  static String error = '';
  final BuildContext context;

  CompanyRegistrationPage(this.context);

  @override
  _CompanyRegistrationPageState createState() =>
      _CompanyRegistrationPageState();
}

class _CompanyRegistrationPageState extends State<CompanyRegistrationPage> {
  final TextEditingController _textEditingController = TextEditingController();
  double _textFieldHeight = 56.0; // Initial height of the text field

  bool _isPasswordVisible = false;

  String _email = '';
  String _password = '';
  String _description = '';
  String _name = '';
  String _country = '';
  String _site = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String
      _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFF7F8FA),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (ScreenUtil.getInstance().setWidth(108))), //144
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _buildAppBar(context),
          drawer: _buildDrawer(context),
          body: LayoutBuilder(builder: (context, constraints) {
            return _buildBody(context, constraints);
          }),
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
            style: TextStyles.logo,
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
          style: TextStyles.menu_item,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(Strings.menu_for_company, style: TextStyles.menu_item),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CompanyPage(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_for_hr,
          style: TextStyles.menu_item,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HrPageOld(context)),
          );
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_about_us,
          style: TextStyles.menu_item,
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
          style: TextStyles.menu_item,
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
            CompanyRegistrationPage.error = Strings.email_not_founded;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CompanyRegistrationPage(context)),
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
  Widget _buildBody(BuildContext context, BoxConstraints constraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
        child: ResponsiveWidget(
          largeScreen: _buildLargeScreen(context),
          mediumScreen: _buildMediumScreen(context),
          smallScreen: _buildSmallScreen(context),
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
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _buildRegistration(context),
                _buildIllustration(),
              ],
            ),
          ),
          _buildFooter(context)
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
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _buildRegistration(context),
                Expanded(flex: 2, child: _buildIllustration()),
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
          _buildRegistration(context),
          Divider(),
          _buildCopyRightText(context),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
          _buildSocialIcons(),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
        ],
      ),
    );
  }

// Body Methods:--------------------------------------------------------------
  Widget _buildIllustration() {
    return Image.network(
      Assets.programmer3,
      height: ScreenUtil.getInstance().setWidth(345), //480.0
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

  Widget _buildRegistration(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Card(
          elevation: 8,
          child: Container(
            padding: const EdgeInsets.all(32.0),
            constraints: const BoxConstraints(maxWidth: 350),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTitle(),
                  _gap(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      CompanyRegistrationPage.error,
                      style: TextStyles.logo.copyWith(
                          color: Colors.redAccent,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      Strings.tell_about +
                          ' ' +
                          Strings.the +
                          ' ' +
                          Strings.company,
                      style: TextStyles.logo.copyWith(
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      Strings.enter_info,
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    validator: (value) {
                      // add email validation
                      if (value == null || value.isEmpty) {
                        return Strings.empty_text;
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value ?? '';
                    },
                    decoration: InputDecoration(
                      labelText: Strings.registration_company_name,
                      hintText: Strings.enter_company_name,
                      prefixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    controller: _textEditingController,
                    maxLines: null,
                    // Allow multiple lines for input
                    onChanged: (value) {
                      setState(() {
                        _textFieldHeight = calculateTextFieldHeight(value);
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return Strings.empty_text;
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _description = value ?? '';
                    },
                    decoration: InputDecoration(
                      labelText: Strings.description,
                      hintText: Strings.enter_description,
                      prefixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  DropdownButtonFormField<String>(
                    value: _selectedItem,
                    items: Strings.countries.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedItem = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return Strings.select_country;
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _country = value ?? '';
                    },
                    decoration: InputDecoration(
                      labelText: Strings.select_country,
                      hintText: Strings.select_country,
                      prefixIcon: Icon(Icons.place),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    validator: (value) {
                      // add site validation
                      if (value == null || value.isEmpty) {
                        return Strings.empty_text;
                      }

                      var siteValid = RegExp(r'^[\w\-]+(\.[\w\-]+)+[/#?]?.*$')
                          .hasMatch(value);
                      if (!siteValid) {
                        return Strings.invalid_site;
                      }

                      return null;
                    },
                    onSaved: (value) {
                      _site = value ?? '';
                    },
                    decoration: InputDecoration(
                      labelText: Strings.site,
                      hintText: Strings.enter_site,
                      prefixIcon: Icon(Icons.web),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    validator: (value) {
                      // add email validation
                      if (value == null || value.isEmpty) {
                        return Strings.empty_text;
                      }

                      var emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);
                      if (!emailValid) {
                        return Strings.invalid_email;
                      }

                      return null;
                    },
                    onSaved: (value) {
                      _email = value ?? '';
                    },
                    decoration: InputDecoration(
                      labelText: Strings.email,
                      hintText: Strings.enter_email,
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return Strings.empty_text;
                      }

                      if (value.length < 6) {
                        return Strings.small_password;
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _password = value ?? '';
                    },
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                        labelText: Strings.password,
                        hintText: Strings.enter_password,
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        )),
                  ),
                  _gap(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          Strings.registration + ' ' + Strings.like_company,
                          style:
                              TextStyles.company.copyWith(color: Colors.white),
                        ),
                      ),
                      onPressed: () {
                        if ((_formKey.currentState?.validate() ?? false) &&
                            Data.getConnection()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SuccessRegistrationPage(context)),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);

  double calculateTextFieldHeight(String value) {
    // Calculate the height based on the number of lines
    final textSpan = TextSpan(text: value);
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: null,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(maxWidth: MediaQuery.of(context).size.width - 64.0);
    return textPainter.size.height +
        24.0; // Add padding for better visual appearance
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
