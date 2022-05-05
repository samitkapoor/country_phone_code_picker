import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:country_phone_code_picker/constants/country_flag_image.dart';
import 'package:country_phone_code_picker/controller/search_controller.dart';

class CountryPhoneCodePickerModalSheet extends StatelessWidget {
  CountryPhoneCodePickerModalSheet({
    required this.searchSheetBackground,
    required this.searchBarLeadingIcon,
    required this.searchBarHintText,
    required this.searchBarPrefixIcon,
    required this.searchBarContentPadding,
    required this.border,
    required this.errorBorder,
    required this.focusedBorder,
    required this.disabledBorder,
    required this.focusedErrorBorder,
    required this.enabledBorder,
    required this.searchBarCursorColor,
    required this.searchBarCursorHeight,
    required this.searchBarCursorWidth,
    required this.style,
    required this.searchBarInitialValue,
    required this.keyboardType,
    required this.showCursor,
    super.key,
  });

  TextEditingController? searchBarInput;

  //color of the background of the sheet
  Color searchSheetBackground;

  //leading icon in the appbar that exits the modal sheet page
  Icon searchBarLeadingIcon;

  //hint text for search bar
  String searchBarHintText;

  //prefix icon for search bar
  Icon searchBarPrefixIcon;

  //padding inside the search bar text field
  EdgeInsetsGeometry searchBarContentPadding;

  //border of search bar text field
  InputBorder border;

  //error border for search bar text field
  InputBorder errorBorder;

  //focused border for search bar text field
  InputBorder focusedBorder;

  //disabled border for search bar text field
  InputBorder disabledBorder;

  //focused error border for search bar text field
  InputBorder focusedErrorBorder;

  //enabled border for search bar text field
  InputBorder enabledBorder;

  //color of cursor of search bar text field
  Color searchBarCursorColor;

  //height of cursor of search bar text field
  double searchBarCursorHeight;

  //width of cursor of search bar text field
  double searchBarCursorWidth;

  //text style of the input inside search bar text field
  TextStyle style;

  //initial value of the input in search bar text field
  String searchBarInitialValue;

  //keyboard type of search bar text field
  TextInputType keyboardType;

  //show cursor if the value is set to true
  bool showCursor;

  @override
  Widget build(BuildContext context) {
    searchBarInput = TextEditingController(text: searchBarInitialValue);
    SearchController searchController = Get.put(SearchController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: searchSheetBackground,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: searchBarLeadingIcon,
        ),
      ),
      body: Container(
        color: searchSheetBackground,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              controller: searchBarInput,
              onChanged: (query) {
                searchController.updateQueryList(query);
              },
              decoration: InputDecoration(
                hintText: searchBarHintText,
                prefixIcon: searchBarPrefixIcon,
                suffix: IconButton(
                  onPressed: () {
                    searchBarInput!.clear();
                    searchController.updateQueryList('');
                  },
                  icon: const Icon(Icons.cancel_rounded, color: Colors.black),
                ),
                contentPadding: searchBarContentPadding,
                border: border,
                errorBorder: errorBorder,
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
                disabledBorder: disabledBorder,
                focusedErrorBorder: focusedErrorBorder,
              ),
              cursorColor: searchBarCursorColor,
              cursorHeight: searchBarCursorHeight,
              cursorWidth: searchBarCursorWidth,
              style: style,
              keyboardType: keyboardType,
              showCursor: showCursor,
            ),
            Expanded(
              child: GetBuilder<SearchController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.filteredCountries.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          height: 30,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                width: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(countryFlagApi +
                                        controller
                                            .filteredCountries[index].code),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  controller.filteredCountries[index].name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                controller.filteredCountries[index].phoneCode,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
