import 'package:bullionnxtnew/flavors/flavor_variables.dart';
import 'package:bullionnxtnew/main/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    name: FlavorNames.prod,
    variables: Prod.flavorVariables,
  );

  defaultMain(Flavor.dev);
}
