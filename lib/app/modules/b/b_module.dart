import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_modular/app/modules/b/b_controller.dart';
import 'package:playground_modular/app/modules/b/b_page.dart';
import 'package:playground_modular/app/modules/b/pages/new_b_page.dart';

class BModule extends Module {
  @override
  void binds(Injector i) {
    i.add(BController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const BPage());
    r.child('/new_b', child: (_) => const NewBPage());
  }
}
