import 'package:hr_test/constants/strings_eng.dart';
import 'package:hr_test/constants/strings_ru.dart';
import 'package:hr_test/constants/strings_ua.dart';

import '../constants/strings.dart';

class LanguageService {
  static int number;

  static void changeLanguage() {
    switch (number) {
      case 0:
        _changeToEng();
        break;
      case 1:
        _changeToRu();
        break;
      case 2:
        _changeToUa();
        break;
      default:
        _changeToEng();
        break;
    }
  }

  static void validateLanguage() {
    if(number == null || number >= 3) {
       number = 0;
    }
  }

  static void _changeToEng() {
    Strings.about = StringsEng.about;
    Strings.us = StringsEng.us;
    Strings.headline = StringsEng.headline;
    Strings.summary = StringsEng.summary;
    Strings.offer = StringsEng.offer;
    Strings.registration = StringsEng.registration;
    Strings.hr_specialist = StringsEng.hr_specialist;
    Strings.company = StringsEng.company;
    Strings.offers = StringsEng.offers;

    // sign in and registration item
    Strings.sign_in = StringsEng.sign_in;
    Strings.like_company = StringsEng.like_company;
    Strings.like_hr = StringsEng.like_hr;
    Strings.remember = StringsEng.remember;
    Strings.welcome = StringsEng.welcome;
    Strings.enter_mail_password = StringsEng.enter_mail_password;
    Strings.enter_info = StringsEng.enter_info;
    Strings.empty_text = StringsEng.empty_text;
    Strings.invalid_email = StringsEng.invalid_email;
    Strings.invalid_site = StringsEng.invalid_site;
    Strings.email = StringsEng.email;
    Strings.site = StringsEng.site;
    Strings.registration_company_name = StringsEng.registration_company_name;
    Strings.description = StringsEng.description;
    Strings.enter_email = StringsEng.enter_email;
    Strings.enter_site = StringsEng.enter_site;
    Strings.enter_description = StringsEng.enter_description;
    Strings.enter_company_name = StringsEng.enter_company_name;
    Strings.small_password = StringsEng.small_password;
    Strings.password = StringsEng.password;
    Strings.enter_password = StringsEng.enter_password;
    Strings.tell_about = StringsEng.tell_about;
    Strings.the = StringsEng.the;
    Strings.select_country = StringsEng.select_country;
    Strings.tell_about_yourself = StringsEng.tell_about_yourself;
    Strings.name = StringsEng.name;
    Strings.enter_name = StringsEng.enter_name;
    Strings.last_name = StringsEng.last_name;
    Strings.enter_last_name = StringsEng.enter_last_name;
    Strings.success = StringsEng.success;
    Strings.success_wait_for_email = StringsEng.success_wait_for_email;

    // contact
    Strings.if_have = StringsEng.if_have;
    Strings.question = StringsEng.question;
    Strings.number = StringsEng.number;
    Strings.enter_number = StringsEng.enter_number;
    Strings.call = StringsEng.call;
    Strings.call_to = StringsEng.call_to;
    Strings.invalid_number = StringsEng.invalid_number;

    // error message
    Strings.email_not_founded = StringsEng.email_not_founded;

    // privacy politic
    Strings.privacy_sting = StringsEng.privacy_sting;
    Strings.politic_sting = StringsEng.politic_sting;
    Strings.privacy = StringsEng.privacy;
  }

  static void _changeToRu() {
    Strings.about = StringsRu.about;
    Strings.us = StringsRu.us;
    Strings.headline = StringsRu.headline;
    Strings.summary = StringsRu.summary;
    Strings.offer = StringsRu.offer;
    Strings.registration = StringsRu.registration;
    Strings.hr_specialist = StringsRu.hr_specialist;
    Strings.company = StringsRu.company;
    Strings.offers = StringsRu.offers;

    // sign in and registration item
    Strings.sign_in = StringsRu.sign_in;
    Strings.like_company = StringsRu.like_company;
    Strings.like_hr = StringsRu.like_hr;
    Strings.remember = StringsRu.remember;
    Strings.welcome = StringsRu.welcome;
    Strings.enter_mail_password = StringsRu.enter_mail_password;
    Strings.enter_info = StringsRu.enter_info;
    Strings.empty_text = StringsRu.empty_text;
    Strings.invalid_email = StringsRu.invalid_email;
    Strings.invalid_site = StringsRu.invalid_site;
    Strings.email = StringsRu.email;
    Strings.site = StringsRu.site;
    Strings.registration_company_name = StringsRu.registration_company_name;
    Strings.description = StringsRu.description;
    Strings.enter_email = StringsRu.enter_email;
    Strings.enter_site = StringsRu.enter_site;
    Strings.enter_description = StringsRu.enter_description;
    Strings.enter_company_name = StringsRu.enter_company_name;
    Strings.small_password = StringsRu.small_password;
    Strings.password = StringsRu.password;
    Strings.enter_password = StringsRu.enter_password;
    Strings.tell_about = StringsRu.tell_about;
    Strings.the = StringsRu.the;
    Strings.select_country = StringsRu.select_country;
    Strings.tell_about_yourself = StringsRu.tell_about_yourself;
    Strings.name = StringsRu.name;
    Strings.enter_name = StringsRu.enter_name;
    Strings.last_name = StringsRu.last_name;
    Strings.enter_last_name = StringsRu.enter_last_name;
    Strings.success = StringsRu.success;
    Strings.success_wait_for_email = StringsRu.success_wait_for_email;

    // contact
    Strings.if_have = StringsRu.if_have;
    Strings.question = StringsRu.question;
    Strings.number = StringsRu.number;
    Strings.enter_number = StringsRu.enter_number;
    Strings.call = StringsRu.call;
    Strings.call_to = StringsRu.call_to;
    Strings.invalid_number = StringsRu.invalid_number;

    // error message
    Strings.email_not_founded = StringsRu.email_not_founded;

    // privacy politic
    Strings.privacy_sting = StringsRu.privacy_sting;
    Strings.politic_sting = StringsRu.politic_sting;
    Strings.privacy = StringsRu.privacy;
  }

  static void _changeToUa() {
    Strings.about = StringsUa.about;
    Strings.us = StringsUa.us;
    Strings.headline = StringsUa.headline;
    Strings.summary = StringsUa.summary;
    Strings.offer = StringsUa.offer;
    Strings.registration = StringsUa.registration;
    Strings.hr_specialist = StringsUa.hr_specialist;
    Strings.company = StringsUa.company;
    Strings.offers = StringsUa.offers;

    // sign in and registration item
    Strings.sign_in = StringsUa.sign_in;
    Strings.like_company = StringsUa.like_company;
    Strings.like_hr = StringsUa.like_hr;
    Strings.remember = StringsUa.remember;
    Strings.welcome = StringsUa.welcome;
    Strings.enter_mail_password = StringsUa.enter_mail_password;
    Strings.enter_info = StringsUa.enter_info;
    Strings.empty_text = StringsUa.empty_text;
    Strings.invalid_email = StringsUa.invalid_email;
    Strings.invalid_site = StringsUa.invalid_site;
    Strings.email = StringsUa.email;
    Strings.site = StringsUa.site;
    Strings.registration_company_name = StringsUa.registration_company_name;
    Strings.description = StringsUa.description;
    Strings.enter_email = StringsUa.enter_email;
    Strings.enter_site = StringsUa.enter_site;
    Strings.enter_description = StringsUa.enter_description;
    Strings.enter_company_name = StringsUa.enter_company_name;
    Strings.small_password = StringsUa.small_password;
    Strings.password = StringsUa.password;
    Strings.enter_password = StringsUa.enter_password;
    Strings.tell_about = StringsUa.tell_about;
    Strings.the = StringsUa.the;
    Strings.select_country = StringsUa.select_country;
    Strings.tell_about_yourself = StringsUa.tell_about_yourself;
    Strings.name = StringsUa.name;
    Strings.enter_name = StringsUa.enter_name;
    Strings.last_name = StringsUa.last_name;
    Strings.enter_last_name = StringsUa.enter_last_name;
    Strings.success = StringsUa.success;
    Strings.success_wait_for_email = StringsUa.success_wait_for_email;

    // contact
    Strings.if_have = StringsUa.if_have;
    Strings.question = StringsUa.question;
    Strings.number = StringsUa.number;
    Strings.enter_number = StringsUa.enter_number;
    Strings.call = StringsUa.call;
    Strings.call_to = StringsUa.call_to;
    Strings.invalid_number = StringsUa.invalid_number;

    // error message
    Strings.email_not_founded = StringsUa.email_not_founded;

    // privacy politic
    Strings.privacy_sting = StringsUa.privacy_sting;
    Strings.politic_sting = StringsUa.politic_sting;
    Strings.privacy = StringsUa.privacy;
  }
}
