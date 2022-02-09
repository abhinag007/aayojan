import 'package:aayojan/screens/common/phone_otp.dart';
import 'package:aayojan/widgets/country_code.dart';
import 'package:aayojan/widgets/submit_circle.dart';
import 'package:aayojan/utilities/responsiveUI/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumber extends StatefulWidget {
  static String routeName = "/phoneNumber";
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Phone Number"),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.only(left: 10, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter Your Phone Number!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 70,
              ),
              PhoneNumberWidget(),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical! * 30,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(PhoneOtp.routeName);
                    },
                    child: submitData(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
