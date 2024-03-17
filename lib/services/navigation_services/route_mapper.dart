part of 'navigation.dart';

Route<dynamic>? Function(RouteSettings)? onGenerateAppRoute(
    RoutesFactory routesFactory) {
  return (RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return routesFactory.createSplashPageRoute();
      case RouteNames.login:
        return routesFactory.createLoginPageRoute();
      case RouteNames.signUp:
        return routesFactory.createSignUpPageRoute();
    }
    return null;
  };
}
