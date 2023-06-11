import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/all_product_model.dart';

class ProductController extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    // Fetch the product data from the API
    // Parse the JSON response and create Product objects
    // Set the _products list with the fetched data
    // Notify the listeners
  }
}
