import 'package:flutter_rest_api_getx/constants/end_points.dart';
import 'package:flutter_rest_api_getx/models/Products.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future<List<Product>> getProducts() async {
    String url = EndPoints.baseUrl + EndPoints.products;

    var response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonValue = response.body;

      return productFromJson(jsonValue);
    } else {
      List<Product> emptyList = [];
      return emptyList;
    }
  }
}
