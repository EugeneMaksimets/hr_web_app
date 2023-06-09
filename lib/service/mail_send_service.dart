import 'package:file_picker/file_picker.dart';

class MailSendService {
  String name;
  String number;
  PlatformFile file;

  MailSendService(String name, String number, {PlatformFile file}) {
    this.name = name;
    this.number = number;
    this.file = file;
  }
}