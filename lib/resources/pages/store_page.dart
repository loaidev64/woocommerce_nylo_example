import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/products_grid_view_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/store_controller.dart';

class StorePage extends NyStatefulWidget<StoreController> {
  static const path = '/store';

  StorePage({super.key}) : super(path, child: _StorePageState());
}

class _StorePageState extends NyState<StorePage> {
  /// [StoreController] controller
  StoreController get controller => widget.controller;

  @override
  init() async {}

  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return ProductsGridView(
      data: () async => [],
    );
  }
}
