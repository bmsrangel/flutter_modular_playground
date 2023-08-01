import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_modular/app/modules/a/a_module.dart';
import 'package:playground_modular/app/modules/b/b_module.dart';
import 'package:playground_modular/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/', module: HomeModule());
    r.module('/a', module: AModule());
    r.module('/b', module: BModule());
  }
}
