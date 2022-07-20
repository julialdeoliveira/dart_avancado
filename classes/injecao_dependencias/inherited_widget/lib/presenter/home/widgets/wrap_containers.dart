import 'package:flutter/material.dart';

import 'container_lamp_homr.dart';

class WrapContainer extends StatelessWidget {
  const WrapContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        ContainerLampHome(
          icon: Icons.light, 
          title: 'Lamp',
          colorBackground: Colors.blue,
          isOpened: true,

        ),
        ContainerLampHome(
          icon: Icons.heart_broken,
          title: 'Lee',
          colorBackground: Colors.red,
          isOpened: false,

        ),
        ContainerLampHome(
          icon: Icons.headphones, 
          title: 'ooo',
          colorBackground: Colors.purple,
          isOpened: false,

        ),
        ContainerLampHome(
          icon: Icons.car_crash,
          title: 'aaa',
          colorBackground: Colors.pink,
          isOpened: false,

        ),
        
      ],
    );
  }
}





