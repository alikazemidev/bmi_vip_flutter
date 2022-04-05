import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightRounded extends StatelessWidget {
  final double width;
  RightRounded({required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: FaIcon(
            FontAwesomeIcons.skullCrossbones,
            color: Colors.red,
            size: 30,
          ),
        ),
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
