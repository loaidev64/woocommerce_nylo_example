import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ProductCard extends StatefulWidget {
  
  const ProductCard({super.key});
  
  static String state = "product_card";

  @override
  createState() => _ProductCardState();
}

class _ProductCardState extends NyState<ProductCard> {

  _ProductCardState() {
    stateName = ProductCard.state;
  }

  @override
  init() async {
    
  }
  
  @override
  stateUpdated(dynamic data) async {
    // e.g. to update this state from another class
    // updateState(ProductCard.state, data: "example payload");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
