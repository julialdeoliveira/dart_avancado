// ignore_for_file: unnecessary_const

import '../../core/app_assets.dart';
import '../home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Minha segunda tela'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }),
              );
            },
            icon: const Icon(
              Icons.heart_broken,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image:  DecorationImage(
                          // image: Image.asset(imgCasal),
                          image: Image.asset(imgCasal).image,
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                      child: Text(
                        'Olá usuário!',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Italian'),
                      ),
                    ),
                    Text(
                      'Você está na segunda tela do nosso app, para voltar aperte o arrow left na appBar',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Italian',
                        
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 315),
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                   color: Colors.black, 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      const Icon(CupertinoIcons.back, color: Colors.white),
                      const Icon(CupertinoIcons.circle_filled, color: Colors.white), 
                      const Icon(CupertinoIcons.forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CachedNetworkImage {}
//stl e tab cria a estrutura inicial de um stateless Widget