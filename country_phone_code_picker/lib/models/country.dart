class Country {
  //for storing the name of the country
  late String _name;

  //for storing the country code
  late String _countryCode;

  //for storing the country phone code
  late String _phoneCode;

  Country(
      {required String name,
      required String countryCode,
      required String phoneCode}) {
    _name = name;
    _countryCode = countryCode;
    _phoneCode = phoneCode;
  }

  //getters
  String get name => _name;

  String get code => _countryCode;

  String get phoneCode => _phoneCode;
}
