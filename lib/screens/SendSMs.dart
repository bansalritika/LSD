import 'package:background_sms/background_sms.dart';
import 'package:flutter/material.dart';

class SendSms extends StatelessWidget {
  const SendSms({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> number = ['9729574967', '9523137146'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Sms"),
      ),
      body: ElevatedButton(
        onPressed: () async {
          for (int i = 0; i < number.length; i++) {
            SmsStatus res = await BackgroundSms.sendMessage(
                phoneNumber: number[i], message: 'kunj');
          }
        },
        child: Text("Send Sms"),
      ),
    );
  }
}
