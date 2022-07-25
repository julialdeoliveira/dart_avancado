import 'package:clean_arch/core/get_it.dart';
import 'package:flutter/material.dart';

import 'app/presenter/ui/products_page.dart';

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
