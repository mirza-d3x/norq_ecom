part of 'navigation.dart';

final class AppRoutesFactory implements RoutesFactory {
  @override
  Route createLoginPageRoute() {
    throw UnimplementedError();
  }

  @override
  Route createSplashPageRoute() {
    return CustomRoute(
      builder: SplashScreenRouteBuilder().call,
    );
  }
}

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({required super.builder});

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
          .animate(CurvedAnimation(
        parent: animation,
        curve: const Interval(0.00, 0.90, curve: Curves.linearToEaseOut),
      )),
      child: child,
    );
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);
}
