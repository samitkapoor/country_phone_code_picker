import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/controller/country_controller.dart';

// ignore: must_be_immutable
class CountryFlagWidget extends StatelessWidget {
  CountryFlagWidget({
    Key? key,
    this.height = 0,
    this.width = 0,
    this.padding = EdgeInsets.zero,
    this.borderRadius = 0,
    this.color = Colors.transparent,
    this.borderColor = Colors.black,
    this.borderStyle = BorderStyle.solid,
    this.borderWidth = 0,
  }) : super(key: key);

  //height of the widget
  double height;

  //width of the widget
  double width;

  //padding in the widget
  EdgeInsetsGeometry padding;

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

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CountryController>(
      builder: (controller) {
        return Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: borderColor,
              width: borderWidth,
              style: borderStyle,
            ),
            image: DecorationImage(
              image: NetworkImage(controller.selectedCountryFlagUrl),
            ),
          ),
        );
      },
    );
  }
}
