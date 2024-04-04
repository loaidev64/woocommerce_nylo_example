import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class CategoryCard extends StatefulWidget {
  
  const CategoryCard({super.key});
  
  static String state = "category_card";

  @override
  createState() => _CategoryCardState();
}

class _CategoryCardState extends NyState<CategoryCard> {

  _CategoryCardState() {
    stateName = CategoryCard.state;
  }

  @override
  init() async {
    
  }
  
  @override
  stateUpdated(dynamic data) async {
    // e.g. to update this state from another class
    // updateState(CategoryCard.state, data: "example payload");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
