import 'package:flutter_modular/flutter_modular.dart';
import 'package:tdd/modules/home/home_module.dart';

class AppModules extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
