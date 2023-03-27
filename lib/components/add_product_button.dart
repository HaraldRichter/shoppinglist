import 'package:flutter/material.dart';

class AddArticleButton extends StatelessWidget {
  const AddArticleButton({Key? key, required this.onPressed}) : super(key: key);
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed(),
      child: const Icon(Icons.add_shopping_cart),
    );
  }
}
