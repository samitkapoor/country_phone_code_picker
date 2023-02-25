import 'package:get/get.dart';

import 'package:country_phone_code_picker/constants/country_flag_image.dart';
import 'package:country_phone_code_picker/models/country.dart';

class CountryController extends GetxController {
  //this variable will keep the record of the selected country code
  //countries[0] will be the default selected country in the application
  late Country selectedCountry;

  String get selectedCountryName => selectedCountry.name;

  String get selectedCountryCode => selectedCountry.code;

  String get selectedCountryPhoneCode => selectedCountry.phoneCode;

  String get selectedCountryFlagUrl => (countryFlagApi + selectedCountry.code);

  void updateSelectedCountry(Country country) {
    selectedCountry = country;
    update();
  }

  Country get getSelectedCountry => selectedCountry;
}

CountryController initializeCountryController() {
  CountryController countryController = Get.put(CountryController());

  countryController.updateSelectedCountry(
    Country(
      name: "Afghanistan",
      countryCode: "AF",
      phoneCode: "+93",
    ),
  );

  return countryController;
}

CountryController getCountryController() {
  CountryController countryController = Get.find<CountryController>();

  return countryController;
}
