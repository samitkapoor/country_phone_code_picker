import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/controller/country_controller.dart';

// ignore: must_be_immutable
class CountryCodeWidget extends StatelessWidget {
  CountryCodeWidget({
    Key? key,
    this.height = 0,
    this.width = 0,
    this.borderRadius = 0,
    this.color = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.borderStyle = BorderStyle.solid,
    this.borderWidth = 0,
    this.textStyle = const TextStyle(
      fontSize: 18,
    ),
  }) : super(key: key);

  //height of the widget
  double height;

  //width of the widget
  double width;

  //color of the widget
  Color color;

  //border curve for the widget
  double borderRadius;

  //color of the border of the widget
  Color borderColor;

  //width of the border of the widget
  double borderWidth;

  //style of the border
  BorderStyle borderStyle;

  //style of the font
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CountryController>(
      builder: (controller) {
        return Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
                color: borderColor, width: borderWidth, style: borderStyle),
          ),
          child: Text(controller.selectedCountryCode, style: textStyle),
        );
      },
    );
  }
}
