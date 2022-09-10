// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LabelMain extends StatelessWidget {
  final String label;
  final Color colorLabel;
   final double fontSize;

  const LabelMain({
    Key? key,
    required this.label,
    required this.colorLabel,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style:  TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: colorLabel,
        ),
      ),
    );
  }
}
