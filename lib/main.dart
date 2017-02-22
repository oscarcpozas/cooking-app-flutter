import 'package:exmaple_app_flutter/app/app.dart';
import 'package:exmaple_app_flutter/app/injection/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  Injector.configureFlavor(Flavor.PROD); // Select flavor build
  runApp(new MaterialApp(home: new CookingApp()));
}