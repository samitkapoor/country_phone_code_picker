import 'package:country_phone_code_picker/models/country.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/controller/country_controller.dart';
import 'package:country_phone_code_picker/constants/country_flag_image.dart';
import 'package:country_phone_code_picker/constants/country_codes.dart';

//the default dropdownwidget for picking the country code
class CountryPhoneCodePicker extends StatelessWidget {
  CountryPhoneCodePicker({
    super.key,
    this.height = 45,
    this.width = 80,
    this.backgroundColor = Colors.transparent,
    this.borderRadius = 15,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    this.countryNameTextStyle =
        const TextStyle(fontSize: 14, color: Colors.black),
    this.countryPhoneCodeTextStyle =
        const TextStyle(color: Colors.black, fontSize: 14),
    this.showFlag = true,
    this.showName = false,
    this.showPhoneCode = false,
    this.actionIcon = const Icon(Icons.arrow_drop_down_rounded),
  });

  CountryPhoneCodePicker.withDefaultSelectedCountry({
    super.key,
    required this.defaultCountryCode,
    this.height = 45,
    this.width = 80,
    this.backgroundColor = Colors.transparent,
    this.borderRadius = 15,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    this.countryNameTextStyle =
        const TextStyle(fontSize: 14, color: Colors.black),
    this.countryPhoneCodeTextStyle =
        const TextStyle(color: Colors.black, fontSize: 14),
    this.showFlag = true,
    this.showName = false,
    this.showPhoneCode = false,
    this.actionIcon = const Icon(Icons.arrow_drop_down_rounded),
  });

  Country defaultCountryCode = countries[92];

  //height of the drop down button widget
  final double height;

  //width of the drop down button widget
  final double width;

  //background color of the drop down widget
  final Color backgroundColor;

  //border radius of the curve around the drop down widget
  final double borderRadius;

  //color of the border
  final Color borderColor;

  //width of the custom border
  final double borderWidth;

  //space between the border of the drop down widget and the elements inside the widget
  final EdgeInsetsGeometry contentPadding;

  //textstyle of the name of the country inside drop down widget
  final TextStyle countryNameTextStyle;

  //textstyle of the phone code of the country inside drop down widget
  final TextStyle countryPhoneCodeTextStyle;

  //if want to show flag in drop down button then set to true
  final bool showFlag;

  //if want to show name in drop down button then set to true
  final bool showName;

  //if want to show phone code in drop down button then set to true
  final bool showPhoneCode;

  //icon for drop down button
  final Icon actionIcon;

  @override
  Widget build(BuildContext context) {
    CountryController countryController = Get.put(CountryController());
    countryController.updateSelectedCountry(defaultCountryCode as Country);
    return InkWell(
      onTap: () {},
      child: GetBuilder<CountryController>(
        builder: (controller) {
          return Container(
            height: height,
            width: width,
            padding: contentPadding,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: borderColor, width: borderWidth),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showFlag == true
                    ? Container(
                        height: height - 5,
                        width: height - 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage(
                              countryFlagApi + controller.selectedCountry.code,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
                showName == true
                    ? Expanded(
                        child: Text(
                          controller.selectedCountry.name,
                          style: countryNameTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    : const SizedBox(),
                showPhoneCode == true
                    ? Text(
                        controller.selectedCountry.phoneCode,
                        style: countryPhoneCodeTextStyle,
                      )
                    : const SizedBox(),
                actionIcon,
              ],
            ),
          );
        },
      ),
    );
  }
}
