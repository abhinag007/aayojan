// @dart=2.9

import 'package:aayojan/screens/common/choose_screen.dart';
import 'package:aayojan/screens/organizers/qr_scan_page.dart';
import 'package:aayojan/screens/users/qr_create_page.dart';
import 'package:aayojan/utilities/color.dart';
import 'package:aayojan/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aayojan',
      theme: ThemeData(
        // fontFamily: GoogleFonts.inter().fontFamily,
        appBarTheme: const AppBarTheme(color: backgroundColor, elevation: 0),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      // home: const MainPage(title: "Aayojan"),
      home: const ChooseScreen(),
    );
  }
}

/*
class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                text: 'Create QR Code',
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRCreatePage(),
                )),
              ),
              const SizedBox(height: 32),
              ButtonWidget(
                text: 'Scan QR Code',
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRScanPage(),
                )),
              ),
            ],
          ),
        ),
      );
}*/
