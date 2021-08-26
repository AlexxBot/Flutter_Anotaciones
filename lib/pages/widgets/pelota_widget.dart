import 'package:flutter/material.dart';

class PelotaWidget extends StatelessWidget {
  final Color backgroundColor;
  const PelotaWidget({Key? key, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: this.backgroundColor,
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: Colors.red)),
    );
  }
}
