import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/products_grid_view_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/home_controller.dart';

class HomePage extends NyStatefulWidget<HomeController> {
  static const path = '/home';

  HomePage({super.key}) : super(path, child: _HomePageState());
}

class _HomePageState extends NyState<HomePage> {
  /// [HomeController] controller
  HomeController get controller => widget.controller;

  @override
  init() async {}

  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //TODO:: add categories list view
          //TODO:: add latest products grid 4 products only and it could be customizable
          ProductsGridView(
            data: controller.getLatestProducts,
          ),
          //TODO:: add sale products grid 4 products only and it could be customizable
          ProductsGridView(
            data: controller.getSaleProducts,
          ),
        ],
      ),
    );
  }
}
