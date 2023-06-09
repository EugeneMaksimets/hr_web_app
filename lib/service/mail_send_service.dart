import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class MailSendService {
  String name;
  String number;
  PlatformFile file;

  MailSendService(String name, String number, {PlatformFile file}) {
    this.name = name;
    this.number = number;
    this.file = file;
    sendEmail('hr.library.offer@gmail.com', name, number, file: this.file);
  }

  Future<void> sendEmail(
    String recipient,
    String name,
    String number, {
    PlatformFile file,
  }) async {
    final apiKey =
        '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';
    final url = Uri.parse('https://api.sendgrid.com/v3/mail/send');

    final headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };

    final body = {
      'personalizations': [
        {
          'to': [
            {'email': recipient}
          ]
        }
      ],
      'from': {'email': 'hr.library.offer@gmail.com'},
      'subject': 'OFFER',
      'content': [
        {'type': 'text/plain', 'value': 'name: $name\nnumber: $number'}
      ]
    };

    if (file != null) {
      final fileBytes = await file.bytes;
      final base64File = base64Encode(fileBytes);
      body['attachments'] = [
        {
          'content': base64File,
          'filename': file.name,
        }
      ];
    }

    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode == 202) {
      print('Email sent successfully!');
    } else {
      print('Failed to send email. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }
}
