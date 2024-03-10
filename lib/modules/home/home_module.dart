import 'package:flutter_modular/flutter_modular.dart';
import 'package:tdd/modules/home/controller/home_controller.dart';
import 'package:tdd/modules/home/view/home_view.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add(HomeController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => HomeView(
        controller: Modular.get<HomeController>(),
      ),
    );
  }
}
