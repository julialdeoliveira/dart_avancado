import 'package:flutter/material.dart';
import '../next_page/next_page.dart';
import 'widgets/body_home.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Casa Inteligente'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
               MaterialPageRoute(builder: (context) {
               return NextPage(); 
               }), 
              );
            },
            icon: const Icon(
              Icons.keyboard_arrow_right,
              size: 40,
            ),
          ),
        ],
        centerTitle: true, //Centraliza o texto da appbar
      ),
      body: const BodyHome(),
    );
  }
}

