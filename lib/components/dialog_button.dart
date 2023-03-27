import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  DialogButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
