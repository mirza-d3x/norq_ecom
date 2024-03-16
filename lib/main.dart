import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:norq_ecom/presentation/features/splash/ui/splash_screen.dart';
import 'package:norq_ecom/services/navigation_services/navigation.dart';
import 'package:norq_ecom/services/navigation_services/route_names.dart';
import 'package:norq_ecom/utils/console_log.dart';
import 'package:norq_ecom/utils/state_change_observer.dart';

void main() {
  runZonedGuarded<void>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();

      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

      runApp(EcomApp());

      if (kDebugMode) {
        Bloc.observer = DebuggableBlocObserver(describeStateChanges: false);
      }
    },
    (error, stack) {
      consoleLog("ECOM_APP_ERROR", error: error.toString(), stackTrace: stack);
    },
  );
}

class EcomApp extends StatelessWidget {
  const EcomApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      initialRoute: RouteNames.splash,
      onGenerateRoute: onGenerateAppRoute(
        AppRoutesFactory(),
      ),
    );
  }
}
