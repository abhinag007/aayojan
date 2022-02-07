import 'package:flutter/cupertino.dart';

String getDeviceType(BuildContext context) {
  final data = MediaQuery.of(context);
  return (data.size.shortestSide < 600) ? 'phone' : 'tablet';
}
