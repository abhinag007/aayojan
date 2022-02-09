// @dart=2.9

import 'package:aayojan/utilities/color.dart';
import 'package:aayojan/utilities/responsiveUI/size_config.dart';
import 'package:flutter/material.dart';
import '../../widgets/submit_circle.dart';

class PhoneOtp extends StatelessWidget {
  static String routeName = "/phoneOtp";
  const PhoneOtp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  const Text(
                    "OTP Verification",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text("We sent your code to +1 892 762 788"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("This code will expired in "),
                      TweenAnimationBuilder(
                        tween: Tween(begin: 30.0, end: 0),
                        duration: const Duration(seconds: 30),
                        builder: (context, value, child) => Text(
                          "00:${value.toInt()}",
                          style: const TextStyle(color: purpleAppColor),
                        ),
                        onEnd: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.10),
                  const OtpForm(),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Didn't receive otp? "),
                      Text(
                        "RESEND",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: purpleAppColor,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 30,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Get.toNamed(PhoneOtp.routeName);
                        },
                        child: submitData(),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            child: TextFormField(
              style: const TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
              ),
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin2FocusNode,
              style: const TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
              ),
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin3FocusNode,
              style: const TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
              ),
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin4FocusNode,
              style: const TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: purpleAppColor),
                ),
              ),
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
