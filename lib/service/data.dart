import 'package:hr_test/ui/old/company_registration.dart';
import 'package:hr_test/ui/old/hr_registration.dart';

import '../constants/strings.dart';

class Data {
  // Data(this.email, this.password);

  static bool getConnection() {
    return true;
  }

  static bool signInHr(String email, String password) {
    _validateEmailHr();
    return false;
  }

  static bool signInCompany(String email, String password) {
    _validateEmailCompany();
    return false;
  }

  static void _validateEmailCompany() {
    CompanyRegistrationPage.error = Strings.email_not_founded;
  }

  static void _validateEmailHr() {
    HrRegistrationPage.error = Strings.email_not_founded;
  }
}
