import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  AppBar mAppBar() {
    return AppBar(
      title: Text('mShop'),
      centerTitle: true,
      elevation: 0,
      leading: Icon(
        Icons.arrow_back_ios,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
