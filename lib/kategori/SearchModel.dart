import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchResultModel {
  late TextEditingController searchController;
  late RxString searchResult;

  SearchResultModel() {
    searchController = TextEditingController();
    searchResult = ''.obs;
  }
}
