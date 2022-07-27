import 'package:clean_arch_ex3/app/presenter/controllers/cellphone_controller.dart';
import 'package:flutter/material.dart';

import '../../../core/get_it.dart';


class CellphonesPage extends StatelessWidget {

  CellphonesPage({ Key? key }) : super(key: key);
  CellphoneController controller = getIt.get<CellphoneController>();
  

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('CellPhones'),),
        //  body: ListView.builder(
        // itemCount: controller.cellphones.length,
        // itemBuilder: (context, index) {
        //   // return Text(controller.products[index].name);
        //   return Card(
        //     elevation: 15,
        //     margin: const EdgeInsets.all(10),
        //     child: Padding(
        //       padding: const EdgeInsets.all(20),
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text(
        //                 controller.cellphones[index].name,
        //                 style: const TextStyle(
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               Text(controller.cellphones[index].category),
        //             ],
        //           ),
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.end,
        //             children: [
        //               Text(
        //                 controller.cellphones[index].brand,
        //                 style: const TextStyle(
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               Text(
        //                 controller.cellphones[index].price.toString(),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
          // );
        // },
      // ),  
           
       );
  }
}