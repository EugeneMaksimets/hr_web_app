import 'package:hr_test/constants/strings_eng.dart';
import 'package:hr_test/constants/strings_interview_eng.dart';
import 'package:hr_test/constants/strings_interviews.dart';
import 'package:hr_test/constants/strings_interviews_ru.dart';
import 'package:hr_test/constants/strings_interviews_ua.dart';
import 'package:hr_test/constants/strings_ru.dart';
import 'package:hr_test/constants/strings_ua.dart';

import '../constants/strings.dart';

class LanguageService {
  static int number;

  static void changeLanguage() {
    switch (number) {
      case 0:
        _changeToRu();
        break;
      case 1:
        _changeToEng();
        break;
      case 2:
        _changeToUa();
        break;
      default:
        _changeToRu();
        break;
    }
  }

  static void validateLanguage() {
    if (number == null || number >= 3) {
      number = 0;
    }
  }

  static void _changeToEng() {
    // ---------------- Interview -------------------
    StringsInterview.success_interview_text_more =
        StringsInterviewEng.success_interview_text_more;

    StringsInterview.preparing_interview_text_more =
        StringsInterviewEng.preparing_interview_text_more;

    StringsInterview.cv_starter_interview_text_more =
        StringsInterviewEng.cv_starter_interview_text_more;

    // ---------------- TEXT ----------------------
    Strings.empty_text = StringsEng.empty_text;

    Strings.name = StringsEng.name;
    Strings.enter_name = StringsEng.enter_name;

    // contact
    Strings.number = StringsEng.number;
    Strings.enter_number = StringsEng.enter_number;
    Strings.invalid_number = StringsEng.invalid_number;

    // error message

    // privacy politic
    Strings.privacy_sting = StringsEng.privacy_sting;
    Strings.politic_sting = StringsEng.politic_sting;
    Strings.privacy = StringsEng.privacy;

    //new

    Strings.employee_agency = StringsEng.employee_agency;
    Strings.send_message_form = StringsEng.send_message_form;
    Strings.send_message_form_call = StringsEng.send_message_form_call;

    Strings.recruiting_for_best = StringsEng.recruiting_for_best;
    Strings.success_message_start = StringsEng.success_message_start;
    Strings.success_message_end = StringsEng.success_message_end;

//Strings Article ------------------------------------------------------------
    Strings.article_text = StringsEng.article_text;
    Strings.success_interview_text = StringsEng.success_interview_text;
    Strings.preparing_for_interview_text =
        StringsEng.preparing_for_interview_text;
    Strings.cv_starter_interview_text = StringsEng.cv_starter_interview_text;

//call us Page --------------------------------------------------------------------
    Strings.call = StringsEng.call;
    Strings.contact_page_text = StringsEng.contact_page_text;
    Strings.contact_page_finder_1 = StringsEng.contact_page_finder_1;
    Strings.contact_page_finder_1_more = StringsEng.contact_page_finder_1_more;

//Strings Double Text Button -------------------------------------------------
    Strings.hr_consulting_page_text = StringsEng.hr_consulting_page_text;
    Strings.hr_consulting_page_offer = StringsEng.hr_consulting_page_offer;
    Strings.hr_consulting_page_offer_more =
        StringsEng.hr_consulting_page_offer_more;

    Strings.hr_consulting_page_finder_1 =
        StringsEng.hr_consulting_page_finder_1;
    Strings.hr_consulting_page_finder_1_more =
        StringsEng.hr_consulting_page_finder_1_more;

    Strings.hr_consulting_page_finder_2 =
        StringsEng.hr_consulting_page_finder_2;
    Strings.hr_consulting_page_finder_more_2 =
        StringsEng.hr_consulting_page_finder_more_2;

// OutStaffing Page ----------------------------------------------------------
    Strings.out_staffing_text = StringsEng.out_staffing_text;
    Strings.out_staffing_offer = StringsEng.out_staffing_offer;
    Strings.out_staffing_offer_more = StringsEng.out_staffing_offer_more;

    Strings.out_staffing_finder_1 = StringsEng.out_staffing_finder_1;
    Strings.out_staffing_finder_1_more = StringsEng.out_staffing_finder_1_more;

    Strings.out_staffing_finder_2 = StringsEng.out_staffing_finder_2;
    Strings.out_staffing_finder_2_more = StringsEng.out_staffing_finder_2_more;

// Employee data Page --------------------------------------------------------
    Strings.employee_data_page_text = StringsEng.employee_data_page_text;
    Strings.employee_data_page_offer = StringsEng.employee_data_page_offer;
    Strings.employee_data_page_offer_more =
        StringsEng.employee_data_page_offer_more;

    Strings.employee_data_page_finder_1 =
        StringsEng.employee_data_page_finder_1;
    Strings.employee_data_page_finder_1_more =
        StringsEng.employee_data_page_finder_1_more;
    Strings.employee_data_page_finder_2 =
        StringsEng.employee_data_page_finder_2;
    Strings.employee_data_page_finder_2_more =
        StringsEng.employee_data_page_finder_2_more;

//Scan CV PAGE ---------------------------------------------------------------
    Strings.scan_cv_page_text = StringsEng.scan_cv_page_text;
    Strings.scan_cv_page_offer = StringsEng.scan_cv_page_offer;
    Strings.scan_cv_page_offer_more = StringsEng.scan_cv_page_offer_more;

    Strings.scan_cv_page_finder_1 = StringsEng.scan_cv_page_finder_1;
    Strings.scan_cv_page_finder_1_more = StringsEng.scan_cv_page_finder_1_more;
    Strings.scan_cv_page_finder_2 = StringsEng.scan_cv_page_finder_2;
    Strings.scan_cv_page_finder_2_more = StringsEng.scan_cv_page_finder_2_more;

//Strings Research Page ------------------------------------------------------
    Strings.research_page_text = StringsEng.research_page_text;
    Strings.research_page_offer = StringsEng.research_page_offer;
    Strings.research_page_offer_more = StringsEng.research_page_offer_more;

    Strings.research_page_finder_1 = StringsEng.research_page_finder_1;
    Strings.research_page_finder_1_more =
        StringsEng.research_page_finder_1_more;
    Strings.research_page_finder_2 = StringsEng.research_page_finder_2;
    Strings.research_page_finder_2_more =
        StringsEng.research_page_finder_2_more;

    // Strings ABOUT US PAGE ------------------------------------------------------
    Strings.about_us_text = StringsEng.about_us_text;
    Strings.about_us_text_more = StringsEng.about_us_text_more;
    Strings.about_us_for_people = StringsEng.about_us_for_people;
    Strings.about_us_for_people_more = StringsEng.about_us_for_people_more;

    Strings.about_us_five = StringsEng.about_us_five;
    Strings.about_us_five_more = StringsEng.about_us_five_more;

// String Sales Manager page -------------------------------------------------
    Strings.sales_manager_text = StringsEng.sales_manager_text;
    Strings.sales_manager_offer_work_1 = StringsEng.sales_manager_offer_work_1;
    Strings.sales_manager_offer_work_2 = StringsEng.sales_manager_offer_work_2;
    Strings.sales_manager_offer_work_1_more =
        StringsEng.sales_manager_offer_work_1_more;
    Strings.sales_manager_offer_work_2_more =
        StringsEng.sales_manager_offer_work_2_more;

    Strings.sales_manager_finder = StringsEng.sales_manager_finder;
    Strings.sales_manager_finder_more = StringsEng.sales_manager_finder_more;
    Strings.sales_manager_finder_2 = StringsEng.sales_manager_finder_2;
    Strings.sales_manager_finder_2_more =
        StringsEng.sales_manager_finder_2_more;

// Advertising Page ---------------------------------------------------------
    Strings.advertising_text = StringsEng.advertising_text;
    Strings.advertising_offer_work_1 = StringsEng.advertising_offer_work_1;
    Strings.advertising_offer_work_1_more =
        StringsEng.advertising_offer_work_1_more;
    Strings.advertising_offer_work_2 = StringsEng.advertising_offer_work_2;
    Strings.advertising_offer_work_2_more =
        StringsEng.advertising_offer_work_2_more;

    Strings.advertising_finder_1 = StringsEng.advertising_finder_1;
    Strings.advertising_finder_1_more = StringsEng.advertising_finder_1_more;
    Strings.advertising_finder_2 = StringsEng.advertising_finder_2;
    Strings.advertising_finder_2_more = StringsEng.advertising_finder_2_more;

// Top Manager Page ---------------------------------------------------------

    Strings.top_manager_text = StringsEng.top_manager_text;
    Strings.top_manager_work_1_more = StringsEng.top_manager_work_1_more;
    Strings.top_manager_work_2_more = StringsEng.top_manager_work_2_more;
    Strings.top_manager_finder = StringsEng.top_manager_finder;
    Strings.top_manager_finder_more = StringsEng.top_manager_finder_more;
    Strings.top_manager_finder_2 = StringsEng.top_manager_finder_2;
    Strings.top_manager_finder_2_more = StringsEng.top_manager_finder_2_more;

// Administration Page --------------------------------------------------------
    Strings.administration_text = StringsEng.administration_text;
    Strings.administration_work_offer = StringsEng.administration_work_offer;
    Strings.administration_work_offer_more =
        StringsEng.administration_work_offer_more;
    Strings.administration_finder_1 = StringsEng.administration_finder_1;
    Strings.administration_finder_1_more =
        StringsEng.administration_finder_1_more;
    Strings.administration_finder_2 = StringsEng.administration_finder_2;
    Strings.administration_finder_2_more =
        StringsEng.administration_finder_2_more;

// HR Page new ----------------------------------------------------------------
    Strings.hr_page_text = StringsEng.hr_page_text;
    Strings.hr_page_offer_more_1 = StringsEng.hr_page_offer_more_1;
    Strings.hr_page_offer_more_2 = StringsEng.hr_page_offer_more_2;
    Strings.hr_page_finder_1 = StringsEng.hr_page_finder_1;
    Strings.hr_page_finder_more_1 = StringsEng.hr_page_finder_more_1;
    Strings.hr_page_finder_2 = StringsEng.hr_page_finder_2;
    Strings.hr_page_finder_more_2 = StringsEng.hr_page_finder_more_2;

// Engineer Page -------------------------------------------------------------
    Strings.engineer_text = StringsEng.engineer_text;
    Strings.engineer_offer_1_more = StringsEng.engineer_offer_1_more;
    Strings.engineer_offer_2_more = StringsEng.engineer_offer_2_more;
    Strings.engineer_finder_1 = StringsEng.engineer_finder_1;
    Strings.engineer_finder_1_more = StringsEng.engineer_finder_1_more;
    Strings.engineer_finder_2_more = StringsEng.engineer_finder_2_more;

// Building Page -------------------------------------------------------------
    Strings.building_text = StringsEng.building_text;
    Strings.building_offer_1 = StringsEng.building_offer_1;
    Strings.building_offer_2 = StringsEng.building_offer_2;
    Strings.building_finder_1 = StringsEng.building_finder_1;
    Strings.building_finder_more_1 = StringsEng.building_finder_more_1;
    Strings.building_finder_2 = StringsEng.building_finder_2;
    Strings.building_finder_more_2 = StringsEng.building_finder_more_2;

// Logistics Page ------------------------------------------------------------
    Strings.logistics_text = StringsEng.logistics_text;
    Strings.logistics_offer_1_more = StringsEng.logistics_offer_1_more;
    Strings.logistics_offer_2_more = StringsEng.logistics_offer_2_more;
    Strings.logistics_finder_1 = StringsEng.logistics_finder_1;
    Strings.logistics_finder_1_more = StringsEng.logistics_finder_1_more;
    Strings.logistics_finder_2 = StringsEng.logistics_finder_2;
    Strings.logistics_finder_2_more = StringsEng.logistics_finder_2_more;

    // Employee Page --------------------------------------------------------------
    Strings.worker_page_text = StringsEng.worker_page_text;
    Strings.worker_page_offer_1 = StringsEng.worker_page_offer_1;
    Strings.worker_page_offer_2 = StringsEng.worker_page_offer_2;

    Strings.worker_page_finder_1 = StringsEng.worker_page_finder_1;
    Strings.worker_page_finder_more_1 = StringsEng.worker_page_finder_more_1;
    Strings.worker_page_finder_more_2 = StringsEng.worker_page_finder_more_2;

// FinancierPage -------------------------------------------------------------
    Strings.financier_text = StringsEng.financier_text;
    Strings.financier_offer_1 = StringsEng.financier_offer_1;
    Strings.financier_offer_1_more = StringsEng.financier_offer_1_more;
    Strings.financier_offer_2_more = StringsEng.financier_offer_2_more;

    Strings.financier_finder_1 = StringsEng.financier_finder_1;
    Strings.financier_finder_1_more = StringsEng.financier_finder_1_more;
    Strings.financier_finder_2_more = StringsEng.financier_finder_2_more;

// Strings IT employee page --------------------------------------------------
    Strings.it_employee_text = StringsEng.it_employee_text;
    Strings.it_employee_offer_work = StringsEng.it_employee_offer_work;
    Strings.it_employee_offer_more_1 = StringsEng.it_employee_offer_more_1;
    Strings.it_employee_offer_more_2 = StringsEng.it_employee_offer_more_2;

    Strings.it_employee_finder = StringsEng.it_employee_finder;
    Strings.it_employee_finder_more = StringsEng.it_employee_finder_more;
    Strings.it_employee_what_more = StringsEng.it_employee_what_more;

// Strings mass recruitment page
    Strings.mass_recruitment = StringsEng.mass_recruitment;
    Strings.with_us = StringsEng.with_us;
    Strings.with_us_more = StringsEng.with_us_more;
    Strings.how_mach = StringsEng.how_mach;
    Strings.why_hr_lib = StringsEng.why_hr_lib;
    Strings.why_hr_lib_more = StringsEng.why_hr_lib_more;
    Strings.mass_recruitment_text = StringsEng.mass_recruitment_text;
    Strings.mass_recruitment_text_more = StringsEng.mass_recruitment_text_more;

    Strings.mass_rec_price_validate = StringsEng.mass_rec_price_validate;
    Strings.mass_rec_price_validate_more =
        StringsEng.mass_rec_price_validate_more;

    // Strings Executive Search
    Strings.executive_search = StringsEng.executive_search;
    Strings.why_this_method = StringsEng.why_this_method;
    Strings.why_executive_search_more = StringsEng.why_executive_search_more;

    Strings.executive_search_complex = StringsEng.executive_search_complex;
    Strings.executive_search_complex_more =
        StringsEng.executive_search_complex_more;

    Strings.executive_search_what = StringsEng.executive_search_what;
    Strings.executive_search_what_more = StringsEng.executive_search_what_more;

    Strings.executive_search_price = StringsEng.executive_search_price;
    Strings.executive_search_price_more =
        StringsEng.executive_search_price_more;

// Strings RECRUITMENT ----------------------------------
    Strings.recruitment_text = StringsEng.recruitment_text;

    Strings.recruitment_what_offer = StringsEng.recruitment_what_offer;
    Strings.recruitment_what_offer_more =
        StringsEng.recruitment_what_offer_more;

    Strings.recruitment_problem = StringsEng.recruitment_problem;
    Strings.recruitment_problem_more = StringsEng.recruitment_problem_more;

    Strings.recruitment_how_work = StringsEng.recruitment_how_work;
    Strings.recruitment_how_work_more = StringsEng.recruitment_how_work_more;

    Strings.recruitment_what_more = StringsEng.recruitment_what_more;

// Strings STAFF OUTSOURCING
    Strings.staff_out_text = StringsEng.staff_out_text;
    Strings.staff_out_more = StringsEng.staff_out_more;

    Strings.staff_out_why = StringsEng.staff_out_why;
    Strings.staff_out_why_more = StringsEng.staff_out_why_more;

    Strings.staff_out_is = StringsEng.staff_out_is;
    Strings.staff_out_is_more = StringsEng.staff_out_is_more;

    Strings.staff_out_what = StringsEng.staff_out_what;
    Strings.staff_out_what_more = StringsEng.staff_out_what_more;

// Strings HEAD HUNTING ----------------------------------------------------------------------

    Strings.head_hunting_text = StringsEng.head_hunting_text;
    Strings.head_hunting_why_more = StringsEng.head_hunting_why_more;
    Strings.head_hunting_why_need = StringsEng.head_hunting_why_need;
    Strings.head_hunting_why_need_more = StringsEng.head_hunting_why_need_more;

    Strings.head_hunting_is = StringsEng.head_hunting_is;
    Strings.head_hunting_is_more = StringsEng.head_hunting_is_more;
    Strings.head_hunting_guarantee = StringsEng.head_hunting_guarantee;
    Strings.head_hunting_guarantee_more =
        StringsEng.head_hunting_guarantee_more;

    // Strings home page
    Strings.offer_our_title = StringsEng.offer_our_title;
    Strings.employee_agency_title = StringsEng.employee_agency_title;

    Strings.opinion_personal = StringsEng.opinion_personal;
    Strings.success_work = StringsEng.success_work;
    Strings.personal_save = StringsEng.personal_save;
    Strings.button_for_company_home = StringsEng.button_for_company_home;
    Strings.button_for_hr_home = StringsEng.button_for_hr_home;

    Strings.set_offer = StringsEng.set_offer;
    Strings.set_offer_free_consultation =
        StringsEng.set_offer_free_consultation;
    Strings.offer_home_page_text = StringsEng.offer_home_page_text;
    Strings.offer_home_page_more_text = StringsEng.offer_home_page_more_text;

    Strings.why_we_best = StringsEng.why_we_best;

    Strings.why_we_title_1 = StringsEng.why_we_title_1;
    Strings.why_we_about_1 = StringsEng.why_we_about_1;

    Strings.why_we_title_2 = StringsEng.why_we_title_2;
    Strings.why_we_about_2 = StringsEng.why_we_about_2;
    Strings.why_we_title_3 = StringsEng.why_we_title_3;
    Strings.why_we_about_3 = StringsEng.why_we_about_3;

    Strings.why_we_title_4 = StringsEng.why_we_title_4;
    Strings.why_we_about_4 = StringsEng.why_we_about_4;

    Strings.why_we_title_5 = StringsEng.why_we_title_5;
    Strings.why_we_about_5 = StringsEng.why_we_about_5;

    Strings.why_we_title_6 = StringsEng.why_we_title_6;
    Strings.why_we_about_6 = StringsEng.why_we_about_6;

    Strings.free_monitoring_learn_head = StringsEng.free_monitoring_learn_head;
    Strings.free_monitoring_learn_more = StringsEng.free_monitoring_learn_more;
    Strings.free_monitoring_learn_more_list =
        StringsEng.free_monitoring_learn_more_list;

// Strings for_employee page ----------------------------------------

    Strings.set_cv = StringsEng.set_cv;
    Strings.set_cv_to_database = StringsEng.set_cv_to_database;
    Strings.no_file_selected = StringsEng.no_file_selected;
    Strings.select_file = StringsEng.select_file;
    Strings.find_work = StringsEng.find_work;
    Strings.send_cv_to_hr_library = StringsEng.send_cv_to_hr_library;

    Strings.about_cv = StringsEng.about_cv;

    Strings.how_do_cv = StringsEng.how_do_cv;
    Strings.local_cv = StringsEng.local_cv;
    Strings.local_cv_more = StringsEng.local_cv_more;
    Strings.presentable_cv = StringsEng.presentable_cv;
    Strings.presentable_cv_more = StringsEng.presentable_cv_more;
    Strings.health_full_cv = StringsEng.health_full_cv;
    Strings.health_full_cv_more = StringsEng.health_full_cv_more;
    Strings.comfortable_cv = StringsEng.comfortable_cv;
    Strings.comfortable_cv_more = StringsEng.comfortable_cv_more;

    // special strings
    Strings.more = StringsEng.more;
    Strings.learn_more = StringsEng.learn_more;
    Strings.contact_us_offer = StringsEng.contact_us_offer;

    Strings.why_we = StringsEng.why_we;
    Strings.why_we_offer = StringsEng.why_we_offer;

    Strings.who_give_work = StringsEng.who_give_work;
    Strings.who_give_work_list = StringsEng.who_give_work_list;

    Strings.who_worker = StringsEng.who_worker;
    Strings.who_worker_list = StringsEng.who_worker_list;

    Strings.our_offer = StringsEng.our_offer;
    Strings.offers_way = StringsEng.offers_way;

    Strings.text_for_button_image = StringsEng.text_for_button_image;
    Strings.text_about_offer = StringsEng.text_about_offer;

    Strings.text_more_about_offer = StringsEng.text_more_about_offer;
  }

  static void _changeToRu() {
    // ---------------- Interview -------------------
    StringsInterview.success_interview_text_more =
        StringsInterviewRu.success_interview_text_more;

    StringsInterview.preparing_interview_text_more =
        StringsInterviewRu.preparing_interview_text_more;

    StringsInterview.cv_starter_interview_text_more =
        StringsInterviewRu.cv_starter_interview_text_more;

    // ---------------- TEXT ----------------------

    Strings.empty_text = StringsRu.empty_text;

    Strings.name = StringsRu.name;
    Strings.enter_name = StringsRu.enter_name;

// contact
    Strings.number = StringsRu.number;
    Strings.enter_number = StringsRu.enter_number;
    Strings.invalid_number = StringsRu.invalid_number;

// error message

// privacy policy
    Strings.privacy_sting = StringsRu.privacy_sting;
    Strings.politic_sting = StringsRu.politic_sting;
    Strings.privacy = StringsRu.privacy;

// new

    Strings.employee_agency = StringsRu.employee_agency;
    Strings.send_message_form = StringsRu.send_message_form;
    Strings.send_message_form_call = StringsRu.send_message_form_call;

    Strings.recruiting_for_best = StringsRu.recruiting_for_best;
    Strings.success_message_start = StringsRu.success_message_start;
    Strings.success_message_end = StringsRu.success_message_end;

// Strings Article
    Strings.article_text = StringsRu.article_text;
    Strings.success_interview_text = StringsRu.success_interview_text;
    Strings.preparing_for_interview_text =
        StringsRu.preparing_for_interview_text;
    Strings.cv_starter_interview_text = StringsRu.cv_starter_interview_text;

// call us Page
    Strings.call = StringsRu.call;
    Strings.contact_page_text = StringsRu.contact_page_text;
    Strings.contact_page_finder_1 = StringsRu.contact_page_finder_1;
    Strings.contact_page_finder_1_more = StringsRu.contact_page_finder_1_more;

// Strings Double Text Button
    Strings.hr_consulting_page_text = StringsRu.hr_consulting_page_text;
    Strings.hr_consulting_page_offer = StringsRu.hr_consulting_page_offer;
    Strings.hr_consulting_page_offer_more =
        StringsRu.hr_consulting_page_offer_more;

    Strings.hr_consulting_page_finder_1 = StringsRu.hr_consulting_page_finder_1;
    Strings.hr_consulting_page_finder_1_more =
        StringsRu.hr_consulting_page_finder_1_more;

    Strings.hr_consulting_page_finder_2 = StringsRu.hr_consulting_page_finder_2;
    Strings.hr_consulting_page_finder_more_2 =
        StringsRu.hr_consulting_page_finder_more_2;

// OutStaffing Page
    Strings.out_staffing_text = StringsRu.out_staffing_text;
    Strings.out_staffing_offer = StringsRu.out_staffing_offer;
    Strings.out_staffing_offer_more = StringsRu.out_staffing_offer_more;

    Strings.out_staffing_finder_1 = StringsRu.out_staffing_finder_1;
    Strings.out_staffing_finder_1_more = StringsRu.out_staffing_finder_1_more;

    Strings.out_staffing_finder_2 = StringsRu.out_staffing_finder_2;
    Strings.out_staffing_finder_2_more = StringsRu.out_staffing_finder_2_more;

// Employee data Page
    Strings.employee_data_page_text = StringsRu.employee_data_page_text;
    Strings.employee_data_page_offer = StringsRu.employee_data_page_offer;
    Strings.employee_data_page_offer_more =
        StringsRu.employee_data_page_offer_more;

    Strings.employee_data_page_finder_1 = StringsRu.employee_data_page_finder_1;
    Strings.employee_data_page_finder_1_more =
        StringsRu.employee_data_page_finder_1_more;
    Strings.employee_data_page_finder_2 = StringsRu.employee_data_page_finder_2;
    Strings.employee_data_page_finder_2_more =
        StringsRu.employee_data_page_finder_2_more;

// Scan CV PAGE
    Strings.scan_cv_page_text = StringsRu.scan_cv_page_text;
    Strings.scan_cv_page_offer = StringsRu.scan_cv_page_offer;
    Strings.scan_cv_page_offer_more = StringsRu.scan_cv_page_offer_more;

    Strings.scan_cv_page_finder_1 = StringsRu.scan_cv_page_finder_1;
    Strings.scan_cv_page_finder_1_more = StringsRu.scan_cv_page_finder_1_more;
    Strings.scan_cv_page_finder_2 = StringsRu.scan_cv_page_finder_2;
    Strings.scan_cv_page_finder_2_more = StringsRu.scan_cv_page_finder_2_more;

// Strings Research Page
    Strings.research_page_text = StringsRu.research_page_text;
    Strings.research_page_offer = StringsRu.research_page_offer;
    Strings.research_page_offer_more = StringsRu.research_page_offer_more;

    Strings.research_page_finder_1 = StringsRu.research_page_finder_1;
    Strings.research_page_finder_1_more = StringsRu.research_page_finder_1_more;
    Strings.research_page_finder_2 = StringsRu.research_page_finder_2;
    Strings.research_page_finder_2_more = StringsRu.research_page_finder_2_more;

// Strings ABOUT US PAGE
    Strings.about_us_text = StringsRu.about_us_text;
    Strings.about_us_text_more = StringsRu.about_us_text_more;
    Strings.about_us_for_people = StringsRu.about_us_for_people;
    Strings.about_us_for_people_more = StringsRu.about_us_for_people_more;

    Strings.about_us_five = StringsRu.about_us_five;
    Strings.about_us_five_more = StringsRu.about_us_five_more;

// String Sales Manager page
    Strings.sales_manager_text = StringsRu.sales_manager_text;
    Strings.sales_manager_offer_work_1 = StringsRu.sales_manager_offer_work_1;
    Strings.sales_manager_offer_work_2 = StringsRu.sales_manager_offer_work_2;
    Strings.sales_manager_offer_work_1_more =
        StringsRu.sales_manager_offer_work_1_more;
    Strings.sales_manager_offer_work_2_more =
        StringsRu.sales_manager_offer_work_2_more;

    Strings.sales_manager_finder = StringsRu.sales_manager_finder;
    Strings.sales_manager_finder_more = StringsRu.sales_manager_finder_more;
    Strings.sales_manager_finder_2 = StringsRu.sales_manager_finder_2;
    Strings.sales_manager_finder_2_more = StringsRu.sales_manager_finder_2_more;

// Advertising Page
    Strings.advertising_text = StringsRu.advertising_text;
    Strings.advertising_offer_work_1 = StringsRu.advertising_offer_work_1;
    Strings.advertising_offer_work_1_more =
        StringsRu.advertising_offer_work_1_more;
    Strings.advertising_offer_work_2 = StringsRu.advertising_offer_work_2;
    Strings.advertising_offer_work_2_more =
        StringsRu.advertising_offer_work_2_more;

    Strings.advertising_finder_1 = StringsRu.advertising_finder_1;
    Strings.advertising_finder_1_more = StringsRu.advertising_finder_1_more;
    Strings.advertising_finder_2 = StringsRu.advertising_finder_2;
    Strings.advertising_finder_2_more = StringsRu.advertising_finder_2_more;

// Top Manager Page
    Strings.top_manager_text = StringsRu.top_manager_text;
    Strings.top_manager_work_1_more = StringsRu.top_manager_work_1_more;
    Strings.top_manager_work_2_more = StringsRu.top_manager_work_2_more;
    Strings.top_manager_finder = StringsRu.top_manager_finder;
    Strings.top_manager_finder_more = StringsRu.top_manager_finder_more;
    Strings.top_manager_finder_2 = StringsRu.top_manager_finder_2;
    Strings.top_manager_finder_2_more = StringsRu.top_manager_finder_2_more;

// Administration Page
    Strings.administration_text = StringsRu.administration_text;
    Strings.administration_work_offer = StringsRu.administration_work_offer;
    Strings.administration_work_offer_more =
        StringsRu.administration_work_offer_more;
    Strings.administration_finder_1 = StringsRu.administration_finder_1;
    Strings.administration_finder_1_more =
        StringsRu.administration_finder_1_more;
    Strings.administration_finder_2 = StringsRu.administration_finder_2;
    Strings.administration_finder_2_more =
        StringsRu.administration_finder_2_more;

// HR Page new
    Strings.hr_page_text = StringsRu.hr_page_text;
    Strings.hr_page_offer_more_1 = StringsRu.hr_page_offer_more_1;
    Strings.hr_page_offer_more_2 = StringsRu.hr_page_offer_more_2;
    Strings.hr_page_finder_1 = StringsRu.hr_page_finder_1;
    Strings.hr_page_finder_more_1 = StringsRu.hr_page_finder_more_1;
    Strings.hr_page_finder_2 = StringsRu.hr_page_finder_2;
    Strings.hr_page_finder_more_2 = StringsRu.hr_page_finder_more_2;

// Engineer Page
    Strings.engineer_text = StringsRu.engineer_text;
    Strings.engineer_offer_1_more = StringsRu.engineer_offer_1_more;
    Strings.engineer_offer_2_more = StringsRu.engineer_offer_2_more;
    Strings.engineer_finder_1 = StringsRu.engineer_finder_1;
    Strings.engineer_finder_1_more = StringsRu.engineer_finder_1_more;
    Strings.engineer_finder_2_more = StringsRu.engineer_finder_2_more;

// Building Page
    Strings.building_text = StringsRu.building_text;
    Strings.building_offer_1 = StringsRu.building_offer_1;
    Strings.building_offer_2 = StringsRu.building_offer_2;
    Strings.building_finder_1 = StringsRu.building_finder_1;
    Strings.building_finder_more_1 = StringsRu.building_finder_more_1;
    Strings.building_finder_2 = StringsRu.building_finder_2;
    Strings.building_finder_more_2 = StringsRu.building_finder_more_2;

// Logistics Page
    Strings.logistics_text = StringsRu.logistics_text;
    Strings.logistics_offer_1_more = StringsRu.logistics_offer_1_more;
    Strings.logistics_offer_2_more = StringsRu.logistics_offer_2_more;
    Strings.logistics_finder_1 = StringsRu.logistics_finder_1;
    Strings.logistics_finder_1_more = StringsRu.logistics_finder_1_more;
    Strings.logistics_finder_2 = StringsRu.logistics_finder_2;
    Strings.logistics_finder_2_more = StringsRu.logistics_finder_2_more;

// Employee Page
    Strings.worker_page_text = StringsRu.worker_page_text;
    Strings.worker_page_offer_1 = StringsRu.worker_page_offer_1;
    Strings.worker_page_offer_2 = StringsRu.worker_page_offer_2;

    Strings.worker_page_finder_1 = StringsRu.worker_page_finder_1;
    Strings.worker_page_finder_more_1 = StringsRu.worker_page_finder_more_1;
    Strings.worker_page_finder_more_2 = StringsRu.worker_page_finder_more_2;

// FinancierPage
    Strings.financier_text = StringsRu.financier_text;
    Strings.financier_offer_1 = StringsRu.financier_offer_1;
    Strings.financier_offer_1_more = StringsRu.financier_offer_1_more;
    Strings.financier_offer_2_more = StringsRu.financier_offer_2_more;

    Strings.financier_finder_1 = StringsRu.financier_finder_1;
    Strings.financier_finder_1_more = StringsRu.financier_finder_1_more;
    Strings.financier_finder_2_more = StringsRu.financier_finder_2_more;

// Strings IT employee page
    Strings.it_employee_text = StringsRu.it_employee_text;
    Strings.it_employee_offer_work = StringsRu.it_employee_offer_work;
    Strings.it_employee_offer_more_1 = StringsRu.it_employee_offer_more_1;
    Strings.it_employee_offer_more_2 = StringsRu.it_employee_offer_more_2;

    Strings.it_employee_finder = StringsRu.it_employee_finder;
    Strings.it_employee_finder_more = StringsRu.it_employee_finder_more;
    Strings.it_employee_what_more = StringsRu.it_employee_what_more;

// Strings mass recruitment page
    Strings.mass_recruitment = StringsRu.mass_recruitment;
    Strings.with_us = StringsRu.with_us;
    Strings.with_us_more = StringsRu.with_us_more;
    Strings.how_mach = StringsRu.how_mach;
    Strings.why_hr_lib = StringsRu.why_hr_lib;
    Strings.why_hr_lib_more = StringsRu.why_hr_lib_more;
    Strings.mass_recruitment_text = StringsRu.mass_recruitment_text;
    Strings.mass_recruitment_text_more = StringsRu.mass_recruitment_text_more;

    Strings.mass_rec_price_validate = StringsRu.mass_rec_price_validate;
    Strings.mass_rec_price_validate_more =
        StringsRu.mass_rec_price_validate_more;

// Strings Executive Search
    Strings.executive_search = StringsRu.executive_search;
    Strings.why_this_method = StringsRu.why_this_method;
    Strings.why_executive_search_more = StringsRu.why_executive_search_more;

    Strings.executive_search_complex = StringsRu.executive_search_complex;
    Strings.executive_search_complex_more =
        StringsRu.executive_search_complex_more;

    Strings.executive_search_what = StringsRu.executive_search_what;
    Strings.executive_search_what_more = StringsRu.executive_search_what_more;

    Strings.executive_search_price = StringsRu.executive_search_price;
    Strings.executive_search_price_more = StringsRu.executive_search_price_more;

// Strings RECRUITMENT
    Strings.recruitment_text = StringsRu.recruitment_text;

    Strings.recruitment_what_offer = StringsRu.recruitment_what_offer;
    Strings.recruitment_what_offer_more = StringsRu.recruitment_what_offer_more;

    Strings.recruitment_problem = StringsRu.recruitment_problem;
    Strings.recruitment_problem_more = StringsRu.recruitment_problem_more;

    Strings.recruitment_how_work = StringsRu.recruitment_how_work;
    Strings.recruitment_how_work_more = StringsRu.recruitment_how_work_more;

    Strings.recruitment_what_more = StringsRu.recruitment_what_more;

// Strings STAFF OUTSOURCING
    Strings.staff_out_text = StringsRu.staff_out_text;
    Strings.staff_out_more = StringsRu.staff_out_more;

    Strings.staff_out_why = StringsRu.staff_out_why;
    Strings.staff_out_why_more = StringsRu.staff_out_why_more;

    Strings.staff_out_is = StringsRu.staff_out_is;
    Strings.staff_out_is_more = StringsRu.staff_out_is_more;

    Strings.staff_out_what = StringsRu.staff_out_what;
    Strings.staff_out_what_more = StringsRu.staff_out_what_more;

// Strings HEAD HUNTING
    Strings.head_hunting_text = StringsRu.head_hunting_text;
    Strings.head_hunting_why_more = StringsRu.head_hunting_why_more;
    Strings.head_hunting_why_need = StringsRu.head_hunting_why_need;
    Strings.head_hunting_why_need_more = StringsRu.head_hunting_why_need_more;

    Strings.head_hunting_is = StringsRu.head_hunting_is;
    Strings.head_hunting_is_more = StringsRu.head_hunting_is_more;
    Strings.head_hunting_guarantee = StringsRu.head_hunting_guarantee;
    Strings.head_hunting_guarantee_more = StringsRu.head_hunting_guarantee_more;

// Strings home page
    Strings.offer_our_title = StringsRu.offer_our_title;
    Strings.employee_agency_title = StringsRu.employee_agency_title;

    Strings.opinion_personal = StringsRu.opinion_personal;
    Strings.success_work = StringsRu.success_work;
    Strings.personal_save = StringsRu.personal_save;
    Strings.button_for_company_home = StringsRu.button_for_company_home;
    Strings.button_for_hr_home = StringsRu.button_for_hr_home;

    Strings.set_offer = StringsRu.set_offer;
    Strings.set_offer_free_consultation = StringsRu.set_offer_free_consultation;
    Strings.offer_home_page_text = StringsRu.offer_home_page_text;
    Strings.offer_home_page_more_text = StringsRu.offer_home_page_more_text;

    Strings.why_we_best = StringsRu.why_we_best;

    Strings.why_we_title_1 = StringsRu.why_we_title_1;
    Strings.why_we_about_1 = StringsRu.why_we_about_1;

    Strings.why_we_title_2 = StringsRu.why_we_title_2;
    Strings.why_we_about_2 = StringsRu.why_we_about_2;
    Strings.why_we_title_3 = StringsRu.why_we_title_3;
    Strings.why_we_about_3 = StringsRu.why_we_about_3;

    Strings.why_we_title_4 = StringsRu.why_we_title_4;
    Strings.why_we_about_4 = StringsRu.why_we_about_4;

    Strings.why_we_title_5 = StringsRu.why_we_title_5;
    Strings.why_we_about_5 = StringsRu.why_we_about_5;

    Strings.why_we_title_6 = StringsRu.why_we_title_6;
    Strings.why_we_about_6 = StringsRu.why_we_about_6;

    Strings.free_monitoring_learn_head = StringsRu.free_monitoring_learn_head;
    Strings.free_monitoring_learn_more = StringsRu.free_monitoring_learn_more;
    Strings.free_monitoring_learn_more_list =
        StringsRu.free_monitoring_learn_more_list;

// Strings for_employee page
    Strings.set_cv = StringsRu.set_cv;
    Strings.set_cv_to_database = StringsRu.set_cv_to_database;
    Strings.no_file_selected = StringsRu.no_file_selected;
    Strings.select_file = StringsRu.select_file;
    Strings.find_work = StringsRu.find_work;
    Strings.send_cv_to_hr_library = StringsRu.send_cv_to_hr_library;

    Strings.about_cv = StringsRu.about_cv;

    Strings.how_do_cv = StringsRu.how_do_cv;
    Strings.local_cv = StringsRu.local_cv;
    Strings.local_cv_more = StringsRu.local_cv_more;
    Strings.presentable_cv = StringsRu.presentable_cv;
    Strings.presentable_cv_more = StringsRu.presentable_cv_more;
    Strings.health_full_cv = StringsRu.health_full_cv;
    Strings.health_full_cv_more = StringsRu.health_full_cv_more;
    Strings.comfortable_cv = StringsRu.comfortable_cv;
    Strings.comfortable_cv_more = StringsRu.comfortable_cv_more;

// Special strings
    Strings.more = StringsRu.more;
    Strings.learn_more = StringsRu.learn_more;
    Strings.contact_us_offer = StringsRu.contact_us_offer;

    Strings.why_we = StringsRu.why_we;
    Strings.why_we_offer = StringsRu.why_we_offer;

    Strings.who_give_work = StringsRu.who_give_work;
    Strings.who_give_work_list = StringsRu.who_give_work_list;

    Strings.who_worker = StringsRu.who_worker;
    Strings.who_worker_list = StringsRu.who_worker_list;

    Strings.our_offer = StringsRu.our_offer;
    Strings.offers_way = StringsRu.offers_way;

    Strings.text_for_button_image = StringsRu.text_for_button_image;
    Strings.text_about_offer = StringsRu.text_about_offer;

    Strings.text_more_about_offer = StringsRu.text_more_about_offer;
  }

  static void _changeToUa() {
    // ---------------- Interview -------------------
    StringsInterview.success_interview_text_more =
        StringsInterviewUa.success_interview_text_more;

    StringsInterview.preparing_interview_text_more =
        StringsInterviewUa.preparing_interview_text_more;

    StringsInterview.cv_starter_interview_text_more =
        StringsInterviewUa.cv_starter_interview_text_more;

    // ---------------- TEXT ----------------------

    Strings.empty_text = StringsUa.empty_text;
    Strings.name = StringsUa.name;
    Strings.enter_name = StringsUa.enter_name;

// contact
    Strings.number = StringsUa.number;
    Strings.enter_number = StringsUa.enter_number;
    Strings.invalid_number = StringsUa.invalid_number;

// error message

// privacy policy
    Strings.privacy_sting = StringsUa.privacy_sting;
    Strings.politic_sting = StringsUa.politic_sting;
    Strings.privacy = StringsUa.privacy;

// new
    Strings.employee_agency = StringsUa.employee_agency;
    Strings.send_message_form = StringsUa.send_message_form;
    Strings.send_message_form_call = StringsUa.send_message_form_call;

    Strings.recruiting_for_best = StringsUa.recruiting_for_best;
    Strings.success_message_start = StringsUa.success_message_start;
    Strings.success_message_end = StringsUa.success_message_end;

// Strings Article
    Strings.article_text = StringsUa.article_text;
    Strings.success_interview_text = StringsUa.success_interview_text;
    Strings.preparing_for_interview_text =
        StringsUa.preparing_for_interview_text;
    Strings.cv_starter_interview_text = StringsUa.cv_starter_interview_text;

// call us Page
    Strings.call = StringsUa.call;
    Strings.contact_page_text = StringsUa.contact_page_text;
    Strings.contact_page_finder_1 = StringsUa.contact_page_finder_1;
    Strings.contact_page_finder_1_more = StringsUa.contact_page_finder_1_more;

// Strings Double Text Button
    Strings.hr_consulting_page_text = StringsUa.hr_consulting_page_text;
    Strings.hr_consulting_page_offer = StringsUa.hr_consulting_page_offer;
    Strings.hr_consulting_page_offer_more =
        StringsUa.hr_consulting_page_offer_more;

    Strings.hr_consulting_page_finder_1 = StringsUa.hr_consulting_page_finder_1;
    Strings.hr_consulting_page_finder_1_more =
        StringsUa.hr_consulting_page_finder_1_more;

    Strings.hr_consulting_page_finder_2 = StringsUa.hr_consulting_page_finder_2;
    Strings.hr_consulting_page_finder_more_2 =
        StringsUa.hr_consulting_page_finder_more_2;

// OutStaffing Page
    Strings.out_staffing_text = StringsUa.out_staffing_text;
    Strings.out_staffing_offer = StringsUa.out_staffing_offer;
    Strings.out_staffing_offer_more = StringsUa.out_staffing_offer_more;

    Strings.out_staffing_finder_1 = StringsUa.out_staffing_finder_1;
    Strings.out_staffing_finder_1_more = StringsUa.out_staffing_finder_1_more;

    Strings.out_staffing_finder_2 = StringsUa.out_staffing_finder_2;
    Strings.out_staffing_finder_2_more = StringsUa.out_staffing_finder_2_more;

// Employee data Page
    Strings.employee_data_page_text = StringsUa.employee_data_page_text;
    Strings.employee_data_page_offer = StringsUa.employee_data_page_offer;
    Strings.employee_data_page_offer_more =
        StringsUa.employee_data_page_offer_more;

    Strings.employee_data_page_finder_1 = StringsUa.employee_data_page_finder_1;
    Strings.employee_data_page_finder_1_more =
        StringsUa.employee_data_page_finder_1_more;
    Strings.employee_data_page_finder_2 = StringsUa.employee_data_page_finder_2;
    Strings.employee_data_page_finder_2_more =
        StringsUa.employee_data_page_finder_2_more;

// Scan CV PAGE
    Strings.scan_cv_page_text = StringsUa.scan_cv_page_text;
    Strings.scan_cv_page_offer = StringsUa.scan_cv_page_offer;
    Strings.scan_cv_page_offer_more = StringsUa.scan_cv_page_offer_more;

    Strings.scan_cv_page_finder_1 = StringsUa.scan_cv_page_finder_1;
    Strings.scan_cv_page_finder_1_more = StringsUa.scan_cv_page_finder_1_more;
    Strings.scan_cv_page_finder_2 = StringsUa.scan_cv_page_finder_2;
    Strings.scan_cv_page_finder_2_more = StringsUa.scan_cv_page_finder_2_more;

// Strings Research Page
    Strings.research_page_text = StringsUa.research_page_text;
    Strings.research_page_offer = StringsUa.research_page_offer;
    Strings.research_page_offer_more = StringsUa.research_page_offer_more;

    Strings.research_page_finder_1 = StringsUa.research_page_finder_1;
    Strings.research_page_finder_1_more = StringsUa.research_page_finder_1_more;
    Strings.research_page_finder_2 = StringsUa.research_page_finder_2;
    Strings.research_page_finder_2_more = StringsUa.research_page_finder_2_more;

// Strings ABOUT US PAGE
    Strings.about_us_text = StringsUa.about_us_text;
    Strings.about_us_text_more = StringsUa.about_us_text_more;
    Strings.about_us_for_people = StringsUa.about_us_for_people;
    Strings.about_us_for_people_more = StringsUa.about_us_for_people_more;

    Strings.about_us_five = StringsUa.about_us_five;
    Strings.about_us_five_more = StringsUa.about_us_five_more;

// String Sales Manager page
    Strings.sales_manager_text = StringsUa.sales_manager_text;
    Strings.sales_manager_offer_work_1 = StringsUa.sales_manager_offer_work_1;
    Strings.sales_manager_offer_work_2 = StringsUa.sales_manager_offer_work_2;
    Strings.sales_manager_offer_work_1_more =
        StringsUa.sales_manager_offer_work_1_more;
    Strings.sales_manager_offer_work_2_more =
        StringsUa.sales_manager_offer_work_2_more;

    Strings.sales_manager_finder = StringsUa.sales_manager_finder;
    Strings.sales_manager_finder_more = StringsUa.sales_manager_finder_more;
    Strings.sales_manager_finder_2 = StringsUa.sales_manager_finder_2;
    Strings.sales_manager_finder_2_more = StringsUa.sales_manager_finder_2_more;

// Advertising Page
    Strings.advertising_text = StringsUa.advertising_text;
    Strings.advertising_offer_work_1 = StringsUa.advertising_offer_work_1;
    Strings.advertising_offer_work_1_more =
        StringsUa.advertising_offer_work_1_more;
    Strings.advertising_offer_work_2 = StringsUa.advertising_offer_work_2;
    Strings.advertising_offer_work_2_more =
        StringsUa.advertising_offer_work_2_more;

    Strings.advertising_finder_1 = StringsUa.advertising_finder_1;
    Strings.advertising_finder_1_more = StringsUa.advertising_finder_1_more;
    Strings.advertising_finder_2 = StringsUa.advertising_finder_2;
    Strings.advertising_finder_2_more = StringsUa.advertising_finder_2_more;

// Top Manager Page
    Strings.top_manager_text = StringsUa.top_manager_text;
    Strings.top_manager_work_1_more = StringsUa.top_manager_work_1_more;
    Strings.top_manager_work_2_more = StringsUa.top_manager_work_2_more;
    Strings.top_manager_finder = StringsUa.top_manager_finder;
    Strings.top_manager_finder_more = StringsUa.top_manager_finder_more;
    Strings.top_manager_finder_2 = StringsUa.top_manager_finder_2;
    Strings.top_manager_finder_2_more = StringsUa.top_manager_finder_2_more;

// Administration Page
    Strings.administration_text = StringsUa.administration_text;
    Strings.administration_work_offer = StringsUa.administration_work_offer;
    Strings.administration_work_offer_more =
        StringsUa.administration_work_offer_more;
    Strings.administration_finder_1 = StringsUa.administration_finder_1;
    Strings.administration_finder_1_more =
        StringsUa.administration_finder_1_more;
    Strings.administration_finder_2 = StringsUa.administration_finder_2;
    Strings.administration_finder_2_more =
        StringsUa.administration_finder_2_more;

// HR Page new
    Strings.hr_page_text = StringsUa.hr_page_text;
    Strings.hr_page_offer_more_1 = StringsUa.hr_page_offer_more_1;
    Strings.hr_page_offer_more_2 = StringsUa.hr_page_offer_more_2;
    Strings.hr_page_finder_1 = StringsUa.hr_page_finder_1;
    Strings.hr_page_finder_more_1 = StringsUa.hr_page_finder_more_1;
    Strings.hr_page_finder_2 = StringsUa.hr_page_finder_2;
    Strings.hr_page_finder_more_2 = StringsUa.hr_page_finder_more_2;

// Engineer Page
    Strings.engineer_text = StringsUa.engineer_text;
    Strings.engineer_offer_1_more = StringsUa.engineer_offer_1_more;
    Strings.engineer_offer_2_more = StringsUa.engineer_offer_2_more;
    Strings.engineer_finder_1 = StringsUa.engineer_finder_1;
    Strings.engineer_finder_1_more = StringsUa.engineer_finder_1_more;
    Strings.engineer_finder_2_more = StringsUa.engineer_finder_2_more;

// Building Page
    Strings.building_text = StringsUa.building_text;
    Strings.building_offer_1 = StringsUa.building_offer_1;
    Strings.building_offer_2 = StringsUa.building_offer_2;
    Strings.building_finder_1 = StringsUa.building_finder_1;
    Strings.building_finder_more_1 = StringsUa.building_finder_more_1;
    Strings.building_finder_2 = StringsUa.building_finder_2;
    Strings.building_finder_more_2 = StringsUa.building_finder_more_2;

// Logistics Page
    Strings.logistics_text = StringsUa.logistics_text;
    Strings.logistics_offer_1_more = StringsUa.logistics_offer_1_more;
    Strings.logistics_offer_2_more = StringsUa.logistics_offer_2_more;
    Strings.logistics_finder_1 = StringsUa.logistics_finder_1;
    Strings.logistics_finder_1_more = StringsUa.logistics_finder_1_more;
    Strings.logistics_finder_2 = StringsUa.logistics_finder_2;
    Strings.logistics_finder_2_more = StringsUa.logistics_finder_2_more;

// Employee Page
    Strings.worker_page_text = StringsUa.worker_page_text;
    Strings.worker_page_offer_1 = StringsUa.worker_page_offer_1;
    Strings.worker_page_offer_2 = StringsUa.worker_page_offer_2;

    Strings.worker_page_finder_1 = StringsUa.worker_page_finder_1;
    Strings.worker_page_finder_more_1 = StringsUa.worker_page_finder_more_1;
    Strings.worker_page_finder_more_2 = StringsUa.worker_page_finder_more_2;

// FinancierPage
    Strings.financier_text = StringsUa.financier_text;
    Strings.financier_offer_1 = StringsUa.financier_offer_1;
    Strings.financier_offer_1_more = StringsUa.financier_offer_1_more;
    Strings.financier_offer_2_more = StringsUa.financier_offer_2_more;

    Strings.financier_finder_1 = StringsUa.financier_finder_1;
    Strings.financier_finder_1_more = StringsUa.financier_finder_1_more;
    Strings.financier_finder_2_more = StringsUa.financier_finder_2_more;

// Strings IT employee page
    Strings.it_employee_text = StringsUa.it_employee_text;
    Strings.it_employee_offer_work = StringsUa.it_employee_offer_work;
    Strings.it_employee_offer_more_1 = StringsUa.it_employee_offer_more_1;
    Strings.it_employee_offer_more_2 = StringsUa.it_employee_offer_more_2;

    Strings.it_employee_finder = StringsUa.it_employee_finder;
    Strings.it_employee_finder_more = StringsUa.it_employee_finder_more;
    Strings.it_employee_what_more = StringsUa.it_employee_what_more;

// Strings mass recruitment page
    Strings.mass_recruitment = StringsUa.mass_recruitment;
    Strings.with_us = StringsUa.with_us;
    Strings.with_us_more = StringsUa.with_us_more;
    Strings.how_mach = StringsUa.how_mach;
    Strings.why_hr_lib = StringsUa.why_hr_lib;
    Strings.why_hr_lib_more = StringsUa.why_hr_lib_more;
    Strings.mass_recruitment_text = StringsUa.mass_recruitment_text;
    Strings.mass_recruitment_text_more = StringsUa.mass_recruitment_text_more;

    Strings.mass_rec_price_validate = StringsUa.mass_rec_price_validate;
    Strings.mass_rec_price_validate_more =
        StringsUa.mass_rec_price_validate_more;

// Strings Executive Search
    Strings.executive_search = StringsUa.executive_search;
    Strings.why_this_method = StringsUa.why_this_method;
    Strings.why_executive_search_more = StringsUa.why_executive_search_more;

    Strings.executive_search_complex = StringsUa.executive_search_complex;
    Strings.executive_search_complex_more =
        StringsUa.executive_search_complex_more;

    Strings.executive_search_what = StringsUa.executive_search_what;
    Strings.executive_search_what_more = StringsUa.executive_search_what_more;

    Strings.executive_search_price = StringsUa.executive_search_price;
    Strings.executive_search_price_more = StringsUa.executive_search_price_more;

// Strings RECRUITMENT
    Strings.recruitment_text = StringsUa.recruitment_text;

    Strings.recruitment_what_offer = StringsUa.recruitment_what_offer;
    Strings.recruitment_what_offer_more = StringsUa.recruitment_what_offer_more;

    Strings.recruitment_problem = StringsUa.recruitment_problem;
    Strings.recruitment_problem_more = StringsUa.recruitment_problem_more;

    Strings.recruitment_how_work = StringsUa.recruitment_how_work;
    Strings.recruitment_how_work_more = StringsUa.recruitment_how_work_more;

    Strings.recruitment_what_more = StringsUa.recruitment_what_more;

// Strings STAFF OUTSOURCING
    Strings.staff_out_text = StringsUa.staff_out_text;
    Strings.staff_out_more = StringsUa.staff_out_more;

    Strings.staff_out_why = StringsUa.staff_out_why;
    Strings.staff_out_why_more = StringsUa.staff_out_why_more;

    Strings.staff_out_is = StringsUa.staff_out_is;
    Strings.staff_out_is_more = StringsUa.staff_out_is_more;

    Strings.staff_out_what = StringsUa.staff_out_what;
    Strings.staff_out_what_more = StringsUa.staff_out_what_more;

// Strings HEAD HUNTING
    Strings.head_hunting_text = StringsUa.head_hunting_text;
    Strings.head_hunting_why_more = StringsUa.head_hunting_why_more;
    Strings.head_hunting_why_need = StringsUa.head_hunting_why_need;
    Strings.head_hunting_why_need_more = StringsUa.head_hunting_why_need_more;

    Strings.head_hunting_is = StringsUa.head_hunting_is;
    Strings.head_hunting_is_more = StringsUa.head_hunting_is_more;
    Strings.head_hunting_guarantee = StringsUa.head_hunting_guarantee;
    Strings.head_hunting_guarantee_more = StringsUa.head_hunting_guarantee_more;

// Strings home page
    Strings.offer_our_title = StringsUa.offer_our_title;
    Strings.employee_agency_title = StringsUa.employee_agency_title;

    Strings.opinion_personal = StringsUa.opinion_personal;
    Strings.success_work = StringsUa.success_work;
    Strings.personal_save = StringsUa.personal_save;
    Strings.button_for_company_home = StringsUa.button_for_company_home;
    Strings.button_for_hr_home = StringsUa.button_for_hr_home;

    Strings.set_offer = StringsUa.set_offer;
    Strings.set_offer_free_consultation = StringsUa.set_offer_free_consultation;
    Strings.offer_home_page_text = StringsUa.offer_home_page_text;
    Strings.offer_home_page_more_text = StringsUa.offer_home_page_more_text;

    Strings.why_we_best = StringsUa.why_we_best;

    Strings.why_we_title_1 = StringsUa.why_we_title_1;
    Strings.why_we_about_1 = StringsUa.why_we_about_1;

    Strings.why_we_title_2 = StringsUa.why_we_title_2;
    Strings.why_we_about_2 = StringsUa.why_we_about_2;
    Strings.why_we_title_3 = StringsUa.why_we_title_3;
    Strings.why_we_about_3 = StringsUa.why_we_about_3;

    Strings.why_we_title_4 = StringsUa.why_we_title_4;
    Strings.why_we_about_4 = StringsUa.why_we_about_4;

    Strings.why_we_title_5 = StringsUa.why_we_title_5;
    Strings.why_we_about_5 = StringsUa.why_we_about_5;

    Strings.why_we_title_6 = StringsUa.why_we_title_6;
    Strings.why_we_about_6 = StringsUa.why_we_about_6;

    Strings.free_monitoring_learn_head = StringsUa.free_monitoring_learn_head;
    Strings.free_monitoring_learn_more = StringsUa.free_monitoring_learn_more;
    Strings.free_monitoring_learn_more_list =
        StringsUa.free_monitoring_learn_more_list;

// Strings for_employee page
    Strings.set_cv = StringsUa.set_cv;
    Strings.set_cv_to_database = StringsUa.set_cv_to_database;
    Strings.no_file_selected = StringsUa.no_file_selected;
    Strings.select_file = StringsUa.select_file;
    Strings.find_work = StringsUa.find_work;
    Strings.send_cv_to_hr_library = StringsUa.send_cv_to_hr_library;

    Strings.about_cv = StringsUa.about_cv;

    Strings.how_do_cv = StringsUa.how_do_cv;
    Strings.local_cv = StringsUa.local_cv;
    Strings.local_cv_more = StringsUa.local_cv_more;
    Strings.presentable_cv = StringsUa.presentable_cv;
    Strings.presentable_cv_more = StringsUa.presentable_cv_more;
    Strings.health_full_cv = StringsUa.health_full_cv;
    Strings.health_full_cv_more = StringsUa.health_full_cv_more;
    Strings.comfortable_cv = StringsUa.comfortable_cv;
    Strings.comfortable_cv_more = StringsUa.comfortable_cv_more;

// Special strings
    Strings.more = StringsUa.more;
    Strings.learn_more = StringsUa.learn_more;
    Strings.contact_us_offer = StringsUa.contact_us_offer;

    Strings.why_we = StringsUa.why_we;
    Strings.why_we_offer = StringsUa.why_we_offer;

    Strings.who_give_work = StringsUa.who_give_work;
    Strings.who_give_work_list = StringsUa.who_give_work_list;

    Strings.who_worker = StringsUa.who_worker;
    Strings.who_worker_list = StringsUa.who_worker_list;

    Strings.our_offer = StringsUa.our_offer;
    Strings.offers_way = StringsUa.offers_way;

    Strings.text_for_button_image = StringsUa.text_for_button_image;
    Strings.text_about_offer = StringsUa.text_about_offer;

    Strings.text_more_about_offer = StringsUa.text_more_about_offer;
  }
}
