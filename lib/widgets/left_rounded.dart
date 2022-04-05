import 'package:bmi_vip_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftRounded extends StatelessWidget {
  final double width;
  LeftRounded({required this.width});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            color: greenBackground,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: FaIcon(
            FontAwesomeIcons.heartCircleCheck,
            color: greenBackground,
            size: 30,
          ),
        ),
      ],
    );
  }
}
