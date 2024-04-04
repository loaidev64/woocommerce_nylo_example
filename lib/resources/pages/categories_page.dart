import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/category_card_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/categories_controller.dart';

class CategoriesPage extends NyStatefulWidget<CategoriesController> {
  static const path = '/categories';

  CategoriesPage({super.key}) : super(path, child: _CategoriesPageState());
}

class _CategoriesPageState extends NyState<CategoriesPage> {
  /// [CategoriesController] controller
  CategoriesController get controller => widget.controller;

  @override
  init() async {}

  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return CategoryCard();
      },
    );
  }
}
