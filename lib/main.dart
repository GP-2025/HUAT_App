import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:msccolone/features/home/ui/home_screen.dart';
import 'package:msccolone/features/login/ui/login_screen.dart';
import 'generated/l10n.dart';
import 'mscclone_app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false ,
    localizationsDelegates: const [
      S.delegate, // The generated delegate for strings
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales, // Supported locales
    locale: Locale('en'),
      home: LoginPage()  ,
  ));
}

