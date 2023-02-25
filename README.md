
A Flutter package that provides an easy and customizable country phone code picker widget!<br><br>

<p>
  <img width=350 src="https://user-images.githubusercontent.com/77121931/168589664-e708d2ec-682d-4a30-af6b-303d9566ec16.gif" />
  <img width=350 src="https://user-images.githubusercontent.com/77121931/166982782-7c92aaa2-0acc-4aac-b1e2-2f65714b593e.png" />
</p>

## Features

This package comes with a lot of customization allowing you to build the widget as per your preferences with ease!
<br>

Parameters for CountryPhoneCodePicker Widget 
<br>

|All you can set parameters|What they mean|Default|
|:-------------------------:|:------------:|:-----:|
|countryController|You need to pass the instance of the countryController|No Default Value|
|defaultCountryCode|Allows you to set a default/initially selected country|Afghanistan|
|height|Height of the picker widget|45|
|width|Width of the picker widget |80|
|flagHeight|Height of the flag inside picker widget|35|
|flagWidth|Width of the flag inside picker widget|50|
|backgroundColor|Background color of picker widget|Colors.transparent|
|borderRadius|Control the radius of the curve around the corners of border of the picker widget|15|
|flagBorderRadius|Control the radius of the curve around the corners of flag image|5|
|borderColor|Color of the border of picker widget|Colors.transparent|
|borderWidth|Width of the border of picker widget|0|
|contentPadding|Padding inside the picker widget|EdgeInsets.symmetric(horizontal:5, vertical:5)|
|countryNameTextStyle|Style the font of country name inside picker widget|TextStyle(fontSize: 14, color: Colors.black)|
|countryPhoneCodeTextStyle|Style the font of phone code inside the picker widget|TextStyle(color: Colors.black, fontSize: 14)|
|showFlag|Flag is shown in the picker widget if value is true|true|
|showName|Name is shown in the picker widget if value is true|false|
|showPhoneCode|Phone Code is shown in the picker widget if value is true|false|
|actionIcon|Picker Widget Icon|Icon(Icons.arrow_drop_down_rounded)|
|searchSheetBackground|Background color of search bar sheet|Color(0xfffafafa)|
|searchBarLeadingIcon|Back Button icon|Icon(Icons.arrow_back_outlined, color: Colors.black)|
|searchBarHintText|Hint text of text field|null|
|searchBarHintStyle|Style the hint text|TextStyle()|
|searchBarLabelText|Label text of text field|null|
|searchBarLabelStyle|Style the label text|TextStyle()|
|searchBarHelperText|Helper text of text field|null|
|searchBarHelperStyle|Style the helper text|TextStyle()|
|searchBarPrefixText|Prefix text of text field|null|
|searchBarPrefixStyle|Style the prefix text|TextStyle()|
|searchBarPrefixIcon|Prefix icon of text field|Icon(Icons.search, color: Colors.black)|
|searchBarContentPadding|Padding of the text field content|EdgeInsets.symmetric(horizontal: 10, vertical: 5)|
|border|Border of text field|OutlineInputBorder(borderSide: BorderSide.none)|
|errorBorder|Error border of text field|OutlineInputBorder(borderSide: BorderSide.none)|
|focusedBorder|Focused border of text field|OutlineInputBorder(borderSide: BorderSide.none)|
|disabledBorder|Disabled border of text field|OutlineInputBorder(borderSide: BorderSide.none)|
|focusedErrorBorder|Focused error border of text field|OutlineInputBorder(borderSide: BorderSide.none)|
|enabledBorder|Enabled border of text field|OutlineInputBorder(borderSide: BorderSide.none)|
|searchBarCursorColor|Color of cursor in text field|Colors.black|
|searchBarCursorHeight|Height of cursor in text field|20|
|searchBarCursorWidth|Width of cursor in text field|2|
|style|Style the input inside text field|TextStyle()|
|searchBarInitialValue|Initial query of text field|Empty string|
|keyboardType|Type of input in text field|TextInputType.text|
|showCursor|Cursor is visible if value is true|true|

<br>

Parameters for specific detail widget

|All you can set parameters|What they mean|Default|
|:-------------------------:|:------------:|:-----:|
|height|Allows you to set height to the widget|0|
|width|Allows you to set width to the widget|0|
|padding|Padding inside the widget|EdgeInsets.zero|
|borderRadius|Curve around the corners of the border of widget|0|
|color|Color of the widget|Colors.transparent|
|borderColor|Color of the border|Colors.black|
|borderStyle|Style of the border|BorderStyle.solid|
|borderWidth|Width of the border|0|
|textStyle|Style the text inside widget|TextStyle(fontSize: 18)|

<br>

## Getting started


Just include this in your pubspec.yaml<br>

```dart
  country_phone_code_picker: <VERSION>
```

or run this in your terminal<br>

```dart
  flutter pub add country_phone_code_picker
```

<br>

## Usage

Before starting the use of Country Code Picket widgets, you need to initialize the CountryController.
Use the below function to initialize the CountryController 
```dart
initializeCountryController();
```
Make sure you initialize the CountryController before using  the widgets. A safe place to initialize would be just outside the MaterialApp!

You can access the instance of the CountryController like this
```dart
CountryController countryController = getCountryController();
```

To simply get a Country Picker widget, try:

```dart
CountryPhoneCodePicker.withDefaultSelectedCountry(
  countryController: countryController,
  defaultCountryCode:
  Country(name: 'India', countryCode: 'IN', phoneCode: '+91'),
  borderRadius: 5,
  borderWidth: 1,
  borderColor: Colors.grey,
  style: const TextStyle(fontSize: 16),
  searchBarHintText: 'Search by name',
),
```

To display a specific property about the country for example - country code, phone code, name, flag

```dart
CountryPhoneCodeWidget(
  height: 30,
  width: 50,
  textStyle: const TextStyle(fontSize: 15),
  borderWidth: 1,
  borderRadius: 5,
  borderColor: Colors.black,
),
```

To fetch details about the selected country, try:

```dart
CountryController countryController = getCountryController(); //Get the instance of the controller
print(countryController.selectedCountry);
print(countryController.selectedCountryCode);
```

## Additional information

 
 Hop on to :- [samitkapoor/country_phone_code_picker](https://github.com/samitkapoor/country_phone_code_picker) 
 to find more information, contribute, file issues regarding the package!
 
