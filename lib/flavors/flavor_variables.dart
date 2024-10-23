

import 'package:bullionnxtnew/flavors/flavor_constants.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class FlavorVariables {
  static String flavor = 'flavor';
  static String baseUrl = 'baseUrl';
}

class FlavorNames {
  static String dev = 'Dev';
  static String prod = 'Prod';
}

/*==============================
          DEVELOPMENT
  ============================== */

class Dev {
  static final Map<String, String> _strings = {
    FlavorVariables.flavor: FlavorNames.dev,
    FlavorVariables.baseUrl: FlavorConstants.devBaseUrl,
  };

  static Map<String, String> flavorVariables = {
    ..._strings,
  };
}

/*===============================
          PRODUCTION
  ==============================*/

class Prod {
  static final Map<String, String> _strings = {
    FlavorVariables.flavor: FlavorNames.prod,
    FlavorVariables.baseUrl: FlavorConstants.prodBaseUrl,
  };

  static Map<String, String> flavorVariables = {
    ..._strings,
  };
}

dynamic getFlavorVariable(String flavorVariable) =>
    FlavorConfig.instance.variables[flavorVariable];
