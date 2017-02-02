import 'package:example_app_flutter/app/app.dart';
import 'package:example_app_flutter/app/injection/injector.dart';
import 'package:flutter/widgets.dart';

void main() {
  Injector.configureFlavor(Flavor.PROD); // Select flavor build
  runApp(new CookingApp());
}