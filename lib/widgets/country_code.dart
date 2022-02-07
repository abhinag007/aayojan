import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatefulWidget {
  const PhoneNumberWidget({Key? key}) : super(key: key);

  @override
  _PhoneNumberWidgetState createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  var _number = '+91';
  var _phoneNumber = '';
  var _countrycode = '+91';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: FittedBox(
            child: CountryCodePicker(
              padding: const EdgeInsets.only(left: 2),
              dialogSize: Size(MediaQuery.of(context).size.width / 1.1,
                  MediaQuery.of(context).size.height / 1.3),
              dialogTextStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
              showDropDownButton: true,
              onChanged: (p) {
                setState(() {
                  _countrycode = p.toString();
                  _number = '';
                  _number = _countrycode + _phoneNumber;
                });
              },
              initialSelection: 'IN',
              favorite: const ['+39', 'FR', '+91', '+1'],
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
              showFlagMain: true,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Phone Number',
              labelText: 'Phone Number',
              hintStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 100 * 5,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              labelStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 100 * 5,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)),
            ),
            style: TextStyle(
              // fontFamily: 'Inter',
              fontSize: MediaQuery.of(context).size.width / 100 * 4,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            onChanged: (String value) {
              setState(() {
                _phoneNumber = value;
                _number = '';
                _number = _countrycode + value;
              });
            },
          ),
        ),
      ],
    );
  }
}
