import 'package:clean_arch_star1/app/presenter/controllers/computer_controller.dart';
import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import 'brand_page.dart';

class ComputersPage extends StatelessWidget {
  ComputersPage({Key? key}) : super(key: key);

ComputerController controller = getIt.get<ComputerController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Computadores'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const BrandsPage())),);
            },
            icon: const Icon(
              Icons.keyboard_arrow_right,
              size: 40,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.computers.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              // controller.getComputerByBrand(controller.computers[index].brand);
              // Navigator.of(context).push(MaterialPageRoute(builder: (((context) => const ComputerInfo))));
            },
          );
        },
        ),
    );
  }
}
