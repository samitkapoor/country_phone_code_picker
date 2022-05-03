class Country {
  late String _name;
  late String _countryCode;
  late String _phoneCode;

  Country(
      {required String name,
      required String countryCode,
      required String phoneCode}) {
    _name = name;
    _countryCode = countryCode;
    _phoneCode = phoneCode;
  }

  String get name => _name;

  String get code => _countryCode;

  String get phoneCode => _phoneCode;
}
