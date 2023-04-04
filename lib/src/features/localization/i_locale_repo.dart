import 'package:flutter/material.dart';

abstract class ILocaleRepo {
  abstract ValueNotifier<Locale> locale;

  Future<bool> apply(String? laguageTag);

  List<Locale> get supportedLocales;
}
