import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_modular/app/modules/a/a_controller.dart';
import 'package:playground_modular/app/modules/a/a_page.dart';
import 'package:playground_modular/app/modules/a/pages/new_a_page.dart';

class AModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton(AController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const APage());
    r.child('/new_a', child: (_) => const NewAPage());
  }
}
