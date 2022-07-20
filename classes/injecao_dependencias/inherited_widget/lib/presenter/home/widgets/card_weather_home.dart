import 'package:flutter/material.dart';
import 'package:inherited_widget/inheriteds/inheriteds.dart';

import '../../../core/app_getit.dart';
import '../../../core/app_model.dart';

class CardWeatherHome extends StatelessWidget {
  const CardWeatherHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40,
      ), //espaçamento dentro
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade100,
            blurRadius: 5,
            spreadRadius: 5,
            offset: const Offset(2, 8),
          ),
        ],
        image: const DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2018/10/28/16/11/volcano-3779159_960_720.jpg'),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, //Alinhamento do eixo principal (vertical e horizontal)
        crossAxisAlignment: CrossAxisAlignment
            .start, //Alinha no eixo secundário da coluna, start ou end esquerda ou direita
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 50, bottom: 6), //espaçamento da data
            child: Text(
              getIt.get<AppModel>().dateTemp,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // const SizedBox(height: 20), //Separa o texto data
          Row(
            children: const [
              Icon(
                Icons.cloudy_snowing,
                color: Colors.orange,
                size: 30,
              ),
              SizedBox(width: 15),
              Text(
                'Cloudy',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getIt.get<TextosCard>().temp,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Indoor temp',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getIt.get<TextosCard>().humidity,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Outdoor Humidity',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getIt.get<TextosCard>().indoor,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Indoor Humidity',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
