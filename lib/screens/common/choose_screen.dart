import 'package:aayojan/screens/common/phone_number.dart';
import 'package:aayojan/utilities/color.dart';
import 'package:aayojan/utilities/responsiveUI/size_config.dart';
import 'package:aayojan/widgets/submit_circle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseScreen extends StatefulWidget {
  static String routeName = "/";
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  int choose = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Who are you?",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 50),
            Container(
              height: 120,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: const Color(0xFF2F3A4B),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                          color: choose == 0 ? Colors.white : greyAppColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/user.png',
                            height: 56,
                            width: 56,
                          ),
                          choose == 0
                              ? const Text(
                                  "User",
                                  style: TextStyle(color: Colors.black),
                                )
                              : const Text(
                                  "User",
                                  style: TextStyle(color: Colors.white),
                                ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        choose = 0;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                          color: choose == 1 ? Colors.white : greyAppColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/planner.png',
                            height: 56,
                            width: 56,
                          ),
                          choose == 1
                              ? const Text(
                                  "Organizer",
                                  style: TextStyle(color: Colors.black),
                                )
                              : const Text(
                                  "Organizer",
                                  style: TextStyle(color: Colors.white),
                                ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        choose = 1;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Get.toNamed(PhoneNumber.routeName);
              },
              child: submitData(),
            ),
          ],
        ),
      ),
    );
  }
}
