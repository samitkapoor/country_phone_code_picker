
A Flutter package that provides an easy and customizable country phone code picker widget!<br><br>

|Picker Widget|Search Bar|
|:-----------:|:--------:|
![Screenshot_1651772527](https://user-images.githubusercontent.com/77121931/166982768-e136a1da-105c-4af3-93d3-2a2a87aadf3b.png)|![Screenshot_1651772534](https://user-images.githubusercontent.com/77121931/166982782-7c92aaa2-0acc-4aac-b1e2-2f65714b593e.png)



## Features

This package comes with a lot of customization allowing you to build the widget as per your preferences with ease!
<br>

|All you can set parameters|What they mean|Default|
|:-------------------------:|:------------:|:-----:|
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



To simply get a Country Picker widget, try:

```dart
CountryPhoneCodePicker.withDefaultSelectedCountry(
  defaultCountryCode:
  Country(name: 'India', countryCode: 'IN', phoneCode: '+91'),
  borderRadius: 5,
  borderWidth: 1,
  borderColor: Colors.grey,
  style: const TextStyle(fontSize: 16),
  searchBarHintText: 'Search by name',
),
```

To fetch details about the selected country, try:

```dart
CountryController countryController = CountryController(); //Initialize the controller
print(countryController.selectedCountry);
print(countryController.selectedCountryCode)
```

## Additional information

 
 Hop on to :- [samitkapoor/country_phone_code_picker](https://github.com/samitkapoor/country_phone_code_picker) 
 to find more information, contribute, file issues regarding the package!
 
