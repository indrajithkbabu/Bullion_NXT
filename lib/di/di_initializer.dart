

import 'package:flutter_simple_dependency_injection/injector.dart';

class DI {
  DI();

  factory DI.initializeDependencies() {
    // addDependency<AppPreferences>(AppPreferenceImpl());
 
 
    return DI();
  }

  static addDependency<T>(T object, {bool isSingleton = true}) {
    Injector().map((injector) => object, isSingleton: isSingleton);
  }

  static T inject<T>() {
    return Injector().get<T>();
  }
}
