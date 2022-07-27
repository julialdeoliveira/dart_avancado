import 'package:clean_arch_ex3/app/presenter/controllers/cellphone_controller.dart';
import 'package:clean_arch_ex3/app/presenter/ui/cellphones_page.dart';
import 'package:flutter/material.dart';

import '../../../core/get_it.dart';

class BrandsPage extends StatelessWidget {
  BrandsPage({Key? key}) : super(key: key);

  CellphoneController controller = getIt.get<CellphoneController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return CellphonesPage();
                }),
              );
            },
            icon: const Icon(
              Icons.keyboard_arrow_right,
              size: 40,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.brands.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.getCellphoneByBrand(controller.brands[index]);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CellphonesPage(),
                ),
              );
            },
            child: Card(
              elevation: 15,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(controller.brands[index]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
