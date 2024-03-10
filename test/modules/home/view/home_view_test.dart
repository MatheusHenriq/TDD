import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/modules/home/controller/home_controller.dart';
import 'package:tdd/modules/home/view/home_view.dart';

void main() {
  group("Home View UI", () {
    testWidgets(
        'GIVEN the Home View is open '
        'THEN i see a username input field '
        'AND I see a password input field '
        'AND I see a Login Button', (WidgetTester tester) async {
      HomeController homeController = HomeController();
      await tester.pumpWidget(
        MaterialApp(
          home: HomeView(
            controller: homeController,
          ),
        ),
      );
      await tester.pump();
      expect(find.byKey(HomeViewConstants.userNameInputKey), findsOneWidget);
      expect(find.byKey(HomeViewConstants.passwordInputKey), findsOneWidget);
      expect(find.byKey(HomeViewConstants.loginButtonKey), findsOneWidget);
    });
    testWidgets(
        'GIVEN the Home View is open '
        'WHEN I type a value into the password field '
        'THEN I see the password is obscured ', (WidgetTester tester) async {
      HomeController homeController = HomeController();
      await tester.pumpWidget(
        MaterialApp(
          home: HomeView(
            controller: homeController,
          ),
        ),
      );
      await tester.pump();
      final passwordInput = tester.widget(find.byKey(HomeViewConstants.passwordInputKey)) as TextField;
      expect(passwordInput.obscureText, true);
    });
  });
}
