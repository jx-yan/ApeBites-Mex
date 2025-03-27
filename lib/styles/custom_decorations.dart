import 'package:flutter/material.dart';

BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: const Color(0xff141414).withOpacity(0.08),
        offset: const Offset(0, 0),
        blurRadius: 1,
      ),
      BoxShadow(
        color: const Color(0xff141414).withOpacity(0.08),
        offset: const Offset(0, 1),
        blurRadius: 8,
        spreadRadius: 2,
      ),
    ],
  );
}