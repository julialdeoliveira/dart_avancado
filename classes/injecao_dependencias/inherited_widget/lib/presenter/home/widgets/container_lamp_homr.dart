import 'package:flutter/material.dart';

class ContainerLampHome extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isOpened;
  final Color colorBackground;

  const ContainerLampHome({
    Key? key,
    required this.icon,
    required this.title,
    required this.isOpened,
    required this.colorBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 30,
      ),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isOpened ? Colors.red : Colors.amber,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade50,
            blurRadius: 5,
            spreadRadius: 10,
            offset: const Offset(10, 3), //sombra
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
               icon,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.circle,
                color: Colors.white,
                size: 15,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 25,
            ),
            child: Column(
              children:  [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  isOpened? 'OPENED' : 'CLOSED',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  // String getTextOpened(bool isOpened){
  //   if (isOpened){
  //     return 'Aberto';
  //   }else{
  //     return 'Fechado';
  //   }
  // }
}
