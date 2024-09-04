import 'package:flutter/material.dart';
import 'package:shamel_store_app/interface/repository_interface.dart';

abstract class LanguageRepositoryInterface implements RepositoryInterface {
  void updateHeader(Locale locale);
  Locale getLocaleFromSharedPref();
  void saveLanguage(Locale locale);
  void saveCacheLanguage(Locale locale);
  Locale getCacheLocaleFromSharedPref();
}