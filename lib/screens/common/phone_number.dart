import 'package:aayojan/widgets/country_code.dart';
import 'package:aayojan/widgets/submit_circle.dart';
import 'package:aayojan/utilities/responsiveUI/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumber extends StatefulWidget {
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
        appBar: AppBar(),
        body: SafeArea(
          minimum: const EdgeInsets.only(left: 10, top: 20, right: 10),
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
                height: 80,
              ),
              const PhoneNumberWidget(),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical! * 30 ?? 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Get.to();
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
