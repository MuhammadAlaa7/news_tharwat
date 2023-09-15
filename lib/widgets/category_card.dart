import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return CategoryView(
        //         category: category.categoryName,
        //       );
        //     },
        //   ),
        // );
        print('card tapped');
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 220,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              category.categoryTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
