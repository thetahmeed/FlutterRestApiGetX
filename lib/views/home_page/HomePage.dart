import 'package:flutter/material.dart';
import 'package:flutter_rest_api_getx/controllers/product_controller.dart';
import 'package:flutter_rest_api_getx/models/Products.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'components/SingleProductModel.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mAppBar(),
  }
  AppBar mAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        'mShop',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.blue,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.blue,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
