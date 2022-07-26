import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';

class GetProductByIdPage extends StatelessWidget {
  GetProductByIdPage({Key? key}) : super(key: key);

  final controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
      ),
      body: Center(
        child: Text(controller.product.name),
      ),
    );
  }
}
