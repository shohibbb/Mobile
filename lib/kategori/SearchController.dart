import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/kategori/SearchModel.dart';

class MySearchController extends GetxController {
  final TextEditingController textController = TextEditingController();
  final SearchResultModel searchResultModel = SearchResultModel();

  void onSearchTextChanged(String value) {
    searchResultModel.searchResult.value = value;
  }
}

