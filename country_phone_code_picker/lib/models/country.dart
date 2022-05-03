class Country {
  late String _name;
  late String _flag;
  late String _countryCode;
  late String _phoneCode;

  Country(
      {required String name,
      required String flag,
      required String countryCode,
      required String phoneCode}) {
    _name = name;
    _flag = flag;
    _countryCode = countryCode;
    _phoneCode = phoneCode;
  }

  String get name => _name;

  String get flag => _flag;

  String get code => _countryCode;

  String get phoneCode => _phoneCode;
}
