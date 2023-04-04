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

  /// `Авторизоваться`
  String get logIn {
    return Intl.message(
      'Авторизоваться',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Адрес электронной почты`
  String get emailAddress {
    return Intl.message(
      'Адрес электронной почты',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Вы забыли свой пароль`
  String get forgotPassword {
    return Intl.message(
      'Вы забыли свой пароль',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Сброс пароля`
  String get resetPassword {
    return Intl.message(
      'Сброс пароля',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Войти в аккаунт`
  String get logInAcc {
    return Intl.message(
      'Войти в аккаунт',
      name: 'logInAcc',
      desc: '',
      args: [],
    );
  }

  /// `Помните свой пароль`
  String get rememberPassword {
    return Intl.message(
      'Помните свой пароль',
      name: 'rememberPassword',
      desc: '',
      args: [],
    );
  }

  /// `Восстановление пароля`
  String get passwordRecovery {
    return Intl.message(
      'Восстановление пароля',
      name: 'passwordRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Введите адрес электронной почты, который вы используете для своей учетной записи`
  String get enterEmailForAccount {
    return Intl.message(
      'Введите адрес электронной почты, который вы используете для своей учетной записи',
      name: 'enterEmailForAccount',
      desc: '',
      args: [],
    );
  }

  /// `Следующий`
  String get next {
    return Intl.message(
      'Следующий',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Проверочный код`
  String get verificationCode {
    return Intl.message(
      'Проверочный код',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Мы отправили вам код подтверждения по электронной почте`
  String get verificationCodeByEmail {
    return Intl.message(
      'Мы отправили вам код подтверждения по электронной почте',
      name: 'verificationCodeByEmail',
      desc: '',
      args: [],
    );
  }

  /// `Отправь снова`
  String get sendAgain {
    return Intl.message(
      'Отправь снова',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `Введите новый пароль`
  String get enterNewPassword {
    return Intl.message(
      'Введите новый пароль',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Изменить пароль`
  String get changePassword {
    return Intl.message(
      'Изменить пароль',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Задания`
  String get assignments {
    return Intl.message(
      'Задания',
      name: 'assignments',
      desc: '',
      args: [],
    );
  }

  /// `Журнал оценок`
  String get gradeBook {
    return Intl.message(
      'Журнал оценок',
      name: 'gradeBook',
      desc: '',
      args: [],
    );
  }

  /// `Расписание`
  String get schedule {
    return Intl.message(
      'Расписание',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Сохранено`
  String get saved {
    return Intl.message(
      'Сохранено',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Курсы`
  String get courses {
    return Intl.message(
      'Курсы',
      name: 'courses',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get logOut {
    return Intl.message(
      'Выйти',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Группы`
  String get groups {
    return Intl.message(
      'Группы',
      name: 'groups',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'kk'),
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
