import 'package:clean_arch_ex3/app/presenter/ui/brands_page.dart';
import 'package:clean_arch_ex3/core/get_it.dart';
import 'package:flutter/material.dart';

import 'app/presenter/ui/cellphones_page.dart';

void main(){
  setupDependencies();
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: BrandsPage(),
    debugShowCheckedModeBanner: false,
  ),);
}