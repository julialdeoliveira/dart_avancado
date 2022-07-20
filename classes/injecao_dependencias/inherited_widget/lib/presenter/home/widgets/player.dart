import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  const Player({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.pink.shade400,
            Colors.blue.shade100,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade100,
            blurRadius: 5,
            spreadRadius: 5,
            offset: const Offset(2, 8),
          ),
        ],
      ),
      child: Row(
        //  crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.disc_full,
            color: Colors.white,
            size: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'Playing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'Coldplay',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.arrow_left,
                color: Colors.blueGrey,
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.pause,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.arrow_right,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}