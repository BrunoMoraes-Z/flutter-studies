import 'package:flutter/material.dart';
import 'package:injections/modules/home/home_repository.dart';

class HomeController extends ChangeNotifier {
  final HomeRepository repository;

  HomeController(this.repository);
  late String fact = '';
  late String error = '';

  Future<void> getFact() async {
    try {
      fact = (await repository.getFact()).message;
    } catch (e) {
      error = e.toString();
    }
    notifyListeners();
  }
}
