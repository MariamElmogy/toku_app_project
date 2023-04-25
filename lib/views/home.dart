import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/category_enum.dart';
import '../models/category_model.dart';
import 'color_view.dart';
import 'family_view.dart';
import 'numbers_view.dart';
import '../widgets/cateogry_item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  static const String id = 'homeView';

  final List<CategoryModel> categories = const [
    CategoryModel(
        category_type: CategoryType.numbers,
        text: 'Numbers',
        color: Colors.orange),
    CategoryModel(
        category_type: CategoryType.familyMemebers,
        text: 'Family Memebers',
        color: Colors.green),
    CategoryModel(
        category_type: CategoryType.colors,
        text: 'Colors',
        color: Color.fromARGB(255, 193, 76, 214)),
    CategoryModel(
        category_type: CategoryType.phrases,
        text: 'Phrases',
        color: Colors.lightBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
        elevation: 8,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
