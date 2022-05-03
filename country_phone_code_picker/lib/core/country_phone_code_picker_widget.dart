import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/controller/country_controller.dart';

class CountryPhoneCodePicker extends StatelessWidget {
  const CountryPhoneCodePicker({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountryController());
    return Container();
  }
}
