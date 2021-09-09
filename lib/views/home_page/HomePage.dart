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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () {
                  return StaggeredGridView.countBuilder(
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    itemCount: productController.productList.length,
                    //crossAxisSpacing: 4,
                    //mainAxisSpacing: 4,
                    itemBuilder: (context, index) {
                      Product product = productController.productList[index];

                      return SingleProductModel(product: product);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
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
