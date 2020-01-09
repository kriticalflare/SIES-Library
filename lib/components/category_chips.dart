import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  final List<String> categories;
  final List<Widget> catChips = [];

  CategoryChips({this.categories}){
    for(String category in categories){
      catChips.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text(
                category
            ),
          ),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: catChips
    );
  }
}
