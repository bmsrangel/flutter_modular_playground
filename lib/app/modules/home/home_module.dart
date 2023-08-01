import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_modular/app/modules/a/a_module.dart';
import 'package:playground_modular/app/modules/b/b_module.dart';
import 'package:playground_modular/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  List<Module> get imports => [
        // AModule(),
        // BModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child('/home', child: (_) => const HomePage(), children: [
      ModuleRoute('/a', module: AModule()),
      ModuleRoute('/b', module: BModule()),
    ]);
  }
}
