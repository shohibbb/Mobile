import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Model/SearchModel.dart';

class MySearchController extends GetxController {
  final TextEditingController textController = TextEditingController();
  final SearchResultModel searchResultModel = SearchResultModel();

  void onSearchTextChanged(String value) {
    searchResultModel.searchResult.value = value;
  }
}

