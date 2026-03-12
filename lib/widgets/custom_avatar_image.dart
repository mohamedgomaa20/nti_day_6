import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAvatarImage extends StatelessWidget {
  const CustomAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 80,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage("assets/images/avater.png"),
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.edit),
            ),
          ),
        ),
      ],
    );
  }
}
