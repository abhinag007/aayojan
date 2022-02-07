import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container submitData() {
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.white,
    ),
    child: const Icon(
      Icons.arrow_forward_rounded,
      color: Colors.black,
      size: 30,
    ),
  );
}
