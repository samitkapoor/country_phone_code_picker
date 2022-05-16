import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/controller/country_controller.dart';

class CountryPhoneCodeWidget extends StatelessWidget {
  CountryPhoneCodeWidget({
    this.height = 40,
    this.width = 80,
    this.borderRadius = BorderRadius.zero,
    this.color = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.borderStyle = BorderStyle.none,
    this.borderWidth = 2,
    this.textStyle = const TextStyle(
      fontSize: 24,
    ),
  });

  //height of the widget
  double height;

  //width of the widget
  double width;

  //color of the widget
  Color color;

  //border curve for the widget
  BorderRadiusGeometry borderRadius;

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
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            border: Border.all(
                color: borderColor, width: borderWidth, style: borderStyle),
          ),
          child: Text(controller.selectedCountryPhoneCode, style: textStyle),
        );
      },
    );
  }
}
