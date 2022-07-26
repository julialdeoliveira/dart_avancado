import 'package:clean_arch_star1/app/presenter/ui/computers_page.dart';
import 'package:clean_arch_star1/core/get_it.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(
    MaterialApp(
      title: 'Praticando Clean Arch',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ComputersPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
