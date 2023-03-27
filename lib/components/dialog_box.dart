import 'package:flutter/material.dart';
import 'package:shoppinglist/components/dialog_button.dart';

class AddArticleDialogBox extends StatelessWidget {
  AddArticleDialogBox(
      {Key? key,
      required this.articleTextfieldController,
      required this.onCancel,
      required this.onSave})
      : super(key: key);
  final articleTextfieldController;
  Function onSave;
  Function onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: articleTextfieldController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Produkt hinzufügen:"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DialogButton(
                  text: "Speichern",
                  onPressed: onSave(),
                ),
                DialogButton(
                  text: "Abbrechen",
                  onPressed: onCancel(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
