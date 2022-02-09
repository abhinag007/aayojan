import 'package:aayojan/screens/common/choose_screen.dart';
import 'package:aayojan/screens/common/phone_number.dart';
import 'package:aayojan/screens/common/phone_otp.dart';
import 'package:aayojan/screens/organizers/qr_scan_page.dart';
import 'package:aayojan/screens/users/qr_create_page.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  ChooseScreen.routeName: (context) => const ChooseScreen(),
  PhoneNumber.routeName: (context) => const PhoneNumber(),
  QRScanPage.routeName: (context) => const QRScanPage(),
  QRCreatePage.routeName: (context) => const QRCreatePage(),
  PhoneOtp.routeName: (context) => const PhoneOtp(),
};
