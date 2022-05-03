class PhoneCode {
  late String _name;
  late String _flag;
  late String _code;

  PhoneCode(
      {required String name, required String flag, required String code}) {
    _name = name;
    _flag = flag;
    _code = code;
  }

  String get name => _name;

  String get flag => _flag;

  String get code => _code;
}
