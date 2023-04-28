import 'package:flutter/material.dart';
import 'package:newfiles/models/category_model.dart';

import '../../../colors/colors.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    super.key,
  });

  List<CategoryModel> _list = [
    CategoryModel(icon: Icons.category, title: 'Category'),
    CategoryModel(icon: Icons.flight, title: 'flight'),
    CategoryModel(icon: Icons.blinds_closed_sharp, title: 'bills'),
    CategoryModel(icon: Icons.hub, title: 'web'),
    CategoryModel(icon: Icons.topic_outlined, title: 'Top Up'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 80,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 30,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: liteWhite,
                  ),
                  child: Icon(_list[index].icon),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(_list[index].title),
              ],
            );
          },
        ),
      ),
    );
  }
}
