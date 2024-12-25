// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome!`
  String get login_Welcome {
    return Intl.message(
      'Welcome!',
      name: 'login_Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_Email {
    return Intl.message(
      'Email',
      name: 'login_Email',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_Login {
    return Intl.message(
      'Login',
      name: 'login_Login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_Password {
    return Intl.message(
      'Password',
      name: 'login_Password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get login_Forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'login_Forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Trash`
  String get sideMenu_Trash {
    return Intl.message(
      'Trash',
      name: 'sideMenu_Trash',
      desc: '',
      args: [],
    );
  }

  /// `Sent`
  String get sideMenu_Sent {
    return Intl.message(
      'Sent',
      name: 'sideMenu_Sent',
      desc: '',
      args: [],
    );
  }

  /// `Inbox`
  String get sideMenu_Index {
    return Intl.message(
      'Inbox',
      name: 'sideMenu_Index',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get sideMenu_Settings {
    return Intl.message(
      'profile',
      name: 'sideMenu_Settings',
      desc: '',
      args: [],
    );
  }

  /// `Drafts`
  String get sideMenu_Drafts {
    return Intl.message(
      'Drafts',
      name: 'sideMenu_Drafts',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get sideMenu_Alert_Hider {
    return Intl.message(
      'Alert',
      name: 'sideMenu_Alert_Hider',
      desc: '',
      args: [],
    );
  }

  /// `try to have a dialog`
  String get sideMenu_Alert_Content {
    return Intl.message(
      'try to have a dialog',
      name: 'sideMenu_Alert_Content',
      desc: '',
      args: [],
    );
  }

  /// `Compose`
  String get sideMenu_Button_Compose {
    return Intl.message(
      'Compose',
      name: 'sideMenu_Button_Compose',
      desc: '',
      args: [],
    );
  }

  /// `LogOut`
  String get sideMenu_Logout {
    return Intl.message(
      'LogOut',
      name: 'sideMenu_Logout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
