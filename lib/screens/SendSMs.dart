import 'package:background_sms/background_sms.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
class SendSms extends StatefulWidget {
  const SendSms({super.key});

  @override
  State<SendSms> createState() => _SendSmsState();
}

class _SendSmsState extends State<SendSms> {
  String? _currentAddress;

  Position? _currentPosition;

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
    }).catchError((e) {
      debugPrint(e);
    });
  }


  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getCurrentPosition();
    _handleLocationPermission();
  }

  @override
  Widget build(BuildContext context) {
    List<String> number = ['6203172968','9523137146'];
    return Scaffold(
      appBar: AppBar(title: Text("Send Sms"),),
      body: ElevatedButton(
        onPressed: () async {
          for(int i = 0 ; i<number.length;i++) {
            SmsStatus res = await BackgroundSms.sendMessage(
                phoneNumber: number[i], message: 'Hell , I am Ajay \nEmergency! I need help urgently. My current location is https://www.google.com/maps?q=${_currentPosition?.latitude},${_currentPosition?.latitude}.\n Please send assistance immediately. Also, attaching a sound recording for better understanding of the situation. Please act fast. Thank you.');
          }
        },
        child: Text("Send Sms"),
      ),
    );
  }
}
