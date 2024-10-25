import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:osmd_client/osmd_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'core/constants/themes.dart';
import 'core/router/router.dart';
import 'generated/l10n.dart';

var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final router = AppRouter();
  runApp(MaterialApp.router(
    routerConfig: router.config(),
    theme: darkTheme,
    debugShowCheckedModeBanner: false,
    localizationsDelegates: [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
  ));
}