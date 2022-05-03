import 'package:get/get.dart';

import 'package:country_phone_code_picker/constants/country_codes.dart';
import 'package:country_phone_code_picker/models/country.dart';

class CountryController extends GetxController {
  Country selectedCountry = countries[0];

  void updateSelectedCountry(Country country) {
    selectedCountry = country;
    update();
  }
}
