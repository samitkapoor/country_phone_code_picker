import 'package:get/get.dart';

import 'package:country_phone_code_picker/constants/country_codes.dart';
import 'package:country_phone_code_picker/models/country.dart';

class CountryController extends GetxController {
  //this variable will keep the record of the selected country code
  //countries[0] will be the default selected country in the application
  Country selectedCountry = countries[0];

  void updateSelectedCountry(Country country) {
    selectedCountry = country;
    update();
  }
}
