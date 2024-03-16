import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:norq_ecom/presentation/features/splash/bloc/splash_bloc.dart';
import 'package:norq_ecom/presentation/features/splash/ui/splash_screen.dart';

class SplashScreenRouteBuilder {
  Widget call(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<SplashBloc>(
        create: (context) => SplashBloc(),
      )
    ], child: const SplashScreen());
  }
}
