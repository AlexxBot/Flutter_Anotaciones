import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final GestureTapCallback? onPressed;

  const ButtonWidget({Key? key, this.text = '', this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      child: Container(
          decoration:
              BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(this.text),
          )),
    );
  }
}
