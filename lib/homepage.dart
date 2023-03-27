import 'package:flutter/material.dart';
import 'package:shoppinglist/components/add_product_button.dart';

import 'components/dialog_box.dart';
import 'components/shopping_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controller for adding a new product to the shopping list:
  final _articleTextfieldController = TextEditingController();

  List articlesList = [
    // List of Products
    ["Milch", false],
    ["Wurst", false]
  ];

  void checkBoxChanged(bool? value, int index) {
    // Method for making the checkbox functional;
    // the momentary value is simply replaced by its opposite.
    setState(() {
      articlesList[index][1] = !articlesList[index][1];
    });
  }

  dynamic saveNewArticle() {
    // Save the new article
    articlesList.add([_articleTextfieldController.text, false]);
    _articleTextfieldController.clear();
    Navigator.pop(context);
  }

  void createNewArticle() {
    // Add a new article to the list
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddArticleDialogBox(
          articleTextfieldController: _articleTextfieldController,
          onSave: saveNewArticle(),
          onCancel: () => Navigator.pop(context),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text('Einkaufsliste'),
          elevation: 0,
          // "elevation: 0" removes the shadow underneath the AppBar so
          // it looks flat.
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // createNewArticle();
          },
        ),
        body: ListView.builder(
          itemCount: articlesList.length,
          // "itemCount" determines the number of ListTiles.
          // Here the ItemCount is equal to the number of entries in
          // our articles list.
          itemBuilder: (context, index) {
            return ShoppingListTile(
              articleName: articlesList[index][0],
              articleBought: articlesList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ),
      ),
    );
  }
}
