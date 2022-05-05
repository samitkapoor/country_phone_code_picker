import 'package:get/get.dart';

import 'package:country_phone_code_picker/constants/country_codes.dart';
import 'package:country_phone_code_picker/models/country.dart';

class SearchController extends GetxController {
  //list of the countries displaying below the search bar
  List<Country> filteredCountries = countries;

  @override
  void onInit() {
    filteredCountries = countries;
    super.onInit();
  }

  void updateQueryList(String query) {
    List<Country> filter = [];
    //filtering the list of countries on the basis of name
    for (var element in countries) {
      String currentCountryName = element.name.toLowerCase();
      if (currentCountryName.contains(query.toLowerCase())) {
        filter.add(element);
      }
    }

    filteredCountries = filter;
    update();
  }
}
