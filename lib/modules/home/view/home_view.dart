import 'package:flutter/material.dart';
import 'package:tdd/modules/home/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller;
  static const String route = '/';

  const HomeView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TDD"),
      ),
      body: const Column(
        children: [
          TextField(
            key: HomeViewConstants.userNameInputKey,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Username",
            ),
          ),
          TextField(
            key: HomeViewConstants.passwordInputKey,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ),
          ),
          ElevatedButton(
            key: HomeViewConstants.loginButtonKey,
            onPressed: null,
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}

class HomeViewConstants {
  static const Key userNameInputKey = Key('HomeView_userNameInputKeys');
  static const Key passwordInputKey = Key('HomeView_passwordInputKey');
  static const Key loginButtonKey = Key('HomeViewloginButtonKey');
}
