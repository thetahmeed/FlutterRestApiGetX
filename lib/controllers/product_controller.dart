import 'package:flutter_rest_api_getx/models/Products.dart';
import 'package:flutter_rest_api_getx/services/api_services.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  getProducts() async {
    try {
      var products = await ApiServices.getProducts();

      if (products.length != 0) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
