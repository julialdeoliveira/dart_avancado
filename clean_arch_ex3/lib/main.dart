import 'package:clean_arch_ex3/core/get_it.dart';
import 'package:flutter/material.dart';

import 'app/presenter/ui/cellphones_page.dart';

void main(){
  // setupDependencies();
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,

    ),
    home: CellphonesPage(),
    debugShowCheckedModeBanner: false,
  ),);
}