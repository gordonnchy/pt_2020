import 'package:flutter/material.dart';
import 'package:flutter_app/models/category.dart';
import 'package:flutter_app/widgets/cards/image_text_card.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lifeStyleCategories.length,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height / 3,
        child: ImageTextCard(
          category: lifeStyleCategories[index],
        ),
      ),
    );

    // return ImageTextCard();
  }
}
