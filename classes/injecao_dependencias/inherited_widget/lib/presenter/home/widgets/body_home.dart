import 'package:flutter/material.dart';
import 'package:inherited_widget/core/app_model.dart';
import '../../../core/app_getit.dart';
import '../../../inheriteds/inheriteds.dart';
import 'card_weather_home.dart';
import 'list_text_horizontal.dart';
import 'player.dart';
import 'wrap_containers.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String? DateTemp = InheritedDate.of(context)?.dateTemp;

    return SingleChildScrollView(
      child: Column(
        children: [
          Text(getIt.get<AppModel>().dateTemp,),
          const CardWeatherHome(),
          const SizedBox(height: 50),
          const ListTextHorizontal(),
          const WrapContainer(),
          const SizedBox(height: 5),
          const Player(),
        ],
      ),
    );
  }
}
