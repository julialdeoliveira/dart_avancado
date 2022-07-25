import 'package:flutter/material.dart';

import 'app/presenter/ui/products_page.dart';
import 'core/get_it.dart';

void main() {
  setupDependencies();
  runApp(
    MaterialApp(
      title: 'Clean Arch',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ProductsPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
