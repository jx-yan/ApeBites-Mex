import 'package:flutter/material.dart';

BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      // 0px 0px 1px rgba(20, 20, 20, 0.08), 0px 1px 8px 2px rgba(20, 20, 20, 0.08);
      BoxShadow(
        color: Color(0xff141414).withOpacity(0.08),
        offset: Offset(0, 0),
        blurRadius: 1,
      ),
      BoxShadow(
        color: Color(0xff141414).withOpacity(0.08),
        offset: Offset(0, 1),
        blurRadius: 8,
        spreadRadius: 2,
      ),
    ],
  );
}

TextStyle H5 = TextStyle(
  fontSize: 18,
);