import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:norq_ecom/services/navigation_services/route_names.dart';

class NavigationServices {
  void createLoginPageRoute(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      RouteNames.login,
      (route) => false,
    );
  }

  void createSignUpPageRoute(BuildContext context) {
    Navigator.of(context).pushNamed(
      RouteNames.signUp,
    );
  }

  void createSplashPageRoute(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      RouteNames.splash,
      (route) => false,
    );
  }
}

extension AppPageInjectable on BuildContext {
  NavigationServices get navigationService => NavigationServices();
}
