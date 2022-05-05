import 'package:flutter/material.dart';

import 'package:country_phone_code_picker/country_phone_code_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  CountryController countryController = CountryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Phone Code Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CountryPhoneCodePicker.withDefaultSelectedCountry(
              defaultCountryCode:
                  Country(name: 'India', countryCode: 'IN', phoneCode: '+91'),
              borderRadius: 5,
              borderWidth: 1,
              borderColor: Colors.grey,
              style: const TextStyle(fontSize: 16),
              searchBarHintText: 'Search by name',
            ),
          ],
        ),
      ),
    );
  }
}
