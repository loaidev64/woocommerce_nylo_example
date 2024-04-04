import '/app/controllers/controller.dart';
import 'package:flutter/widgets.dart';

class HomeController extends Controller {
  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  Future<List> getLatestProducts() async {
    //TODO:: get latest products from api
    // getEnv(
    // 'WOOCOMMERCE_NUMBER_OF_LATEST_PRODUCTS_SHOWN_IN_HOME_PAGE')

    return [];
  }

  Future<List> getSaleProducts() async {
    //TODO:: get sale products from api
    // getEnv(
    // 'WOOCOMMERCE_NUMBER_OF_SALE_PRODUCTS_SHOWN_IN_HOME_PAGE')

    return [];
  }
}
