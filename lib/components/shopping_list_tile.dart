import 'package:flutter/material.dart';

class ShoppingListTile extends StatelessWidget {
  ShoppingListTile(
      {Key? key,
      required this.articleName,
      required this.articleBought,
      required this.onChanged})
      : super(key: key);

  final String articleName;
  final bool articleBought;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Checkbox(
            value: articleBought,
            onChanged: onChanged,
            activeColor: Colors.black,
          ),
          Text(
            articleName,
            style: TextStyle(
                fontSize: 18,
                decoration: articleBought ? TextDecoration.lineThrough : null
                // Wenn die Checkbox markiert ist, wird auch der Text durchgestrichen
                ),
          ),
        ],
      ),
    );
  }
}
