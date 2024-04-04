import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/product_card_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    this.crossAxisCount = 2,
    required this.data,
    this.empty,
    this.physics = const NeverScrollableScrollPhysics(),
    this.loadingCardCount = 4,
  });

  final int crossAxisCount;

  final Future<dynamic> Function() data;

  final Widget? empty;

  final ScrollPhysics physics;

  final int loadingCardCount;

  @override
  Widget build(BuildContext context) {
    return NyListView.grid(
      data: data,
      crossAxisCount: crossAxisCount,
      child: (context, itemData) {
        return ProductCard();
      },
      empty: empty ?? Text('Empty'.tr()),
      physics: physics,
      useSkeletonizer: true,
      loading: GridView.count(
        crossAxisCount: crossAxisCount,
        children:
            List.generate(loadingCardCount, (index) => ProductCard()).toList(),
      ),
    );
  }
}
