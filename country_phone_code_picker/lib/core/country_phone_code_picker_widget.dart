import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/controller/country_controller.dart';

//the default dropdownwidget for picking the country code
class CountryPhoneCodePicker extends StatelessWidget {
  CountryPhoneCodePicker({
    super.key,
    this.height = 45,
    this.width = 90,
  });

  //height of the drop down button widget
  double height;

  //width of the drop down button widget
  double width;

  @override
  Widget build(BuildContext context) {
    Get.put(CountryController());
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
