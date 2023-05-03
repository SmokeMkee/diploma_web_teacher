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

  /// `Курс`
  String get course {
    return Intl.message(
      'Курс',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notifications {
    return Intl.message(
      'Уведомления',
      name: 'notifications',
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

  /// `Все курсы`
  String get allCourses {
    return Intl.message(
      'Все курсы',
      name: 'allCourses',
      desc: '',
      args: [],
    );
  }

  /// `Другие курсы`
  String get secondCourses {
    return Intl.message(
      'Другие курсы',
      name: 'secondCourses',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get errorText {
    return Intl.message(
      'Ошибка',
      name: 'errorText',
      desc: '',
      args: [],
    );
  }

  /// `Информация о пользователе`
  String get userInformation {
    return Intl.message(
      'Информация о пользователе',
      name: 'userInformation',
      desc: '',
      args: [],
    );
  }

  /// `Здесь вы можете управлять своим аккаунтом`
  String get hereYouCanManageYourAccount {
    return Intl.message(
      'Здесь вы можете управлять своим аккаунтом',
      name: 'hereYouCanManageYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get firstName {
    return Intl.message(
      'Имя',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get secondName {
    return Intl.message(
      'Фамилия',
      name: 'secondName',
      desc: '',
      args: [],
    );
  }

  /// `Отчество`
  String get patronymicName {
    return Intl.message(
      'Отчество',
      name: 'patronymicName',
      desc: '',
      args: [],
    );
  }

  /// `Введите Ваше имя`
  String get enterYourFirstName {
    return Intl.message(
      'Введите Ваше имя',
      name: 'enterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Введите Вашу фамилию`
  String get enterYourSecondName {
    return Intl.message(
      'Введите Вашу фамилию',
      name: 'enterYourSecondName',
      desc: '',
      args: [],
    );
  }

  /// `Введите Ваше отчество`
  String get enterYourPatronymicName {
    return Intl.message(
      'Введите Ваше отчество',
      name: 'enterYourPatronymicName',
      desc: '',
      args: [],
    );
  }

  /// `Введите адрес электронной почты`
  String get enterYourEmailAddress {
    return Intl.message(
      'Введите адрес электронной почты',
      name: 'enterYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Введите свой номер телефона`
  String get enterYourPhoneNumber {
    return Intl.message(
      'Введите свой номер телефона',
      name: 'enterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Дата рождения`
  String get dateOfBirth {
    return Intl.message(
      'Дата рождения',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get phoneNumber {
    return Intl.message(
      'Номер телефона',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Алматы`
  String get almaty {
    return Intl.message(
      'Алматы',
      name: 'almaty',
      desc: '',
      args: [],
    );
  }

  /// `Страна`
  String get country {
    return Intl.message(
      'Страна',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Город`
  String get city {
    return Intl.message(
      'Город',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Улица`
  String get street {
    return Intl.message(
      'Улица',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить изменения`
  String get saveChanges {
    return Intl.message(
      'Сохранить изменения',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Произошла ошибка`
  String get somethingError {
    return Intl.message(
      'Произошла ошибка',
      name: 'somethingError',
      desc: '',
      args: [],
    );
  }

  /// `Учитель`
  String get teacher {
    return Intl.message(
      'Учитель',
      name: 'teacher',
      desc: '',
      args: [],
    );
  }

  /// `Загрузить фото`
  String get uploadPhoto {
    return Intl.message(
      'Загрузить фото',
      name: 'uploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Удалить выбранное`
  String get deleteSelected {
    return Intl.message(
      'Удалить выбранное',
      name: 'deleteSelected',
      desc: '',
      args: [],
    );
  }

  /// `Резюме`
  String get resume {
    return Intl.message(
      'Резюме',
      name: 'resume',
      desc: '',
      args: [],
    );
  }

  /// `Здесь вы можете создать свое резюме`
  String get hereYouCanCreateYourResume {
    return Intl.message(
      'Здесь вы можете создать свое резюме',
      name: 'hereYouCanCreateYourResume',
      desc: '',
      args: [],
    );
  }

  /// `Мэри Джейн`
  String get maryJane {
    return Intl.message(
      'Мэри Джейн',
      name: 'maryJane',
      desc: '',
      args: [],
    );
  }

  /// `Студент`
  String get student {
    return Intl.message(
      'Студент',
      name: 'student',
      desc: '',
      args: [],
    );
  }

  /// `Основная информация`
  String get mainInformation {
    return Intl.message(
      'Основная информация',
      name: 'mainInformation',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Создать новый курс`
  String get createNewCourse {
    return Intl.message(
      'Создать новый курс',
      name: 'createNewCourse',
      desc: '',
      args: [],
    );
  }

  /// `Новый курс`
  String get newCourse {
    return Intl.message(
      'Новый курс',
      name: 'newCourse',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get title {
    return Intl.message(
      'Название',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Введите название`
  String get enterTheTitle {
    return Intl.message(
      'Введите название',
      name: 'enterTheTitle',
      desc: '',
      args: [],
    );
  }

  /// `Цвет`
  String get color {
    return Intl.message(
      'Цвет',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Создать`
  String get create {
    return Intl.message(
      'Создать',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Изменить`
  String get change {
    return Intl.message(
      'Изменить',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Общий английский`
  String get generalEnglish {
    return Intl.message(
      'Общий английский',
      name: 'generalEnglish',
      desc: '',
      args: [],
    );
  }

  /// `UI/UX дизайн`
  String get uiUxDesign {
    return Intl.message(
      'UI/UX дизайн',
      name: 'uiUxDesign',
      desc: '',
      args: [],
    );
  }

  /// `Веб-разработка`
  String get webDevelopment {
    return Intl.message(
      'Веб-разработка',
      name: 'webDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Анимация`
  String get animation {
    return Intl.message(
      'Анимация',
      name: 'animation',
      desc: '',
      args: [],
    );
  }

  /// `Учитель: Алан Александр`
  String get teacherAlanAlexander {
    return Intl.message(
      'Учитель: Алан Александр',
      name: 'teacherAlanAlexander',
      desc: '',
      args: [],
    );
  }

  /// `Добавить студентов`
  String get addStudents {
    return Intl.message(
      'Добавить студентов',
      name: 'addStudents',
      desc: '',
      args: [],
    );
  }

  /// `Добавить студента по электронной почте`
  String get addStudentByEmail {
    return Intl.message(
      'Добавить студента по электронной почте',
      name: 'addStudentByEmail',
      desc: '',
      args: [],
    );
  }

  /// `Список студентов`
  String get listOfStudents {
    return Intl.message(
      'Список студентов',
      name: 'listOfStudents',
      desc: '',
      args: [],
    );
  }

  /// `Создать новую группу`
  String get createNewGroup {
    return Intl.message(
      'Создать новую группу',
      name: 'createNewGroup',
      desc: '',
      args: [],
    );
  }

  /// `Разделы`
  String get units {
    return Intl.message(
      'Разделы',
      name: 'units',
      desc: '',
      args: [],
    );
  }

  /// `Категория`
  String get category {
    return Intl.message(
      'Категория',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Журнал оценок > Общий английский`
  String get gradeBookGeneralEnglish {
    return Intl.message(
      'Журнал оценок > Общий английский',
      name: 'gradeBookGeneralEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Посещаемость: 89.34%`
  String get attendance8934 {
    return Intl.message(
      'Посещаемость: 89.34%',
      name: 'attendance8934',
      desc: '',
      args: [],
    );
  }

  /// `Посещаемость`
  String get attendance {
    return Intl.message(
      'Посещаемость',
      name: 'attendance',
      desc: '',
      args: [],
    );
  }

  /// `Оценки`
  String get grades {
    return Intl.message(
      'Оценки',
      name: 'grades',
      desc: '',
      args: [],
    );
  }

  /// `Роберт`
  String get robert {
    return Intl.message(
      'Роберт',
      name: 'robert',
      desc: '',
      args: [],
    );
  }

  /// `Перри`
  String get perry {
    return Intl.message(
      'Перри',
      name: 'perry',
      desc: '',
      args: [],
    );
  }

  /// `Робер Перри`
  String get robertPerry {
    return Intl.message(
      'Робер Перри',
      name: 'robertPerry',
      desc: '',
      args: [],
    );
  }

  /// `Павел`
  String get paul {
    return Intl.message(
      'Павел',
      name: 'paul',
      desc: '',
      args: [],
    );
  }

  /// `Уилсон`
  String get wilson {
    return Intl.message(
      'Уилсон',
      name: 'wilson',
      desc: '',
      args: [],
    );
  }

  /// `Майкл`
  String get michael {
    return Intl.message(
      'Майкл',
      name: 'michael',
      desc: '',
      args: [],
    );
  }

  /// `Генри`
  String get henry {
    return Intl.message(
      'Генри',
      name: 'henry',
      desc: '',
      args: [],
    );
  }

  /// `Тимур`
  String get timur {
    return Intl.message(
      'Тимур',
      name: 'timur',
      desc: '',
      args: [],
    );
  }

  /// `Мерекеев`
  String get merekeyev {
    return Intl.message(
      'Мерекеев',
      name: 'merekeyev',
      desc: '',
      args: [],
    );
  }

  /// `Баян`
  String get bayan {
    return Intl.message(
      'Баян',
      name: 'bayan',
      desc: '',
      args: [],
    );
  }

  /// `Буйтек`
  String get buitek {
    return Intl.message(
      'Буйтек',
      name: 'buitek',
      desc: '',
      args: [],
    );
  }

  /// `Закончено`
  String get finished {
    return Intl.message(
      'Закончено',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `Проверено`
  String get checked {
    return Intl.message(
      'Проверено',
      name: 'checked',
      desc: '',
      args: [],
    );
  }

  /// `РП`
  String get pr {
    return Intl.message(
      'РП',
      name: 'pr',
      desc: '',
      args: [],
    );
  }

  /// `ПУ`
  String get pw {
    return Intl.message(
      'ПУ',
      name: 'pw',
      desc: '',
      args: [],
    );
  }

  /// `МГ`
  String get mh {
    return Intl.message(
      'МГ',
      name: 'mh',
      desc: '',
      args: [],
    );
  }

  /// `ТМ`
  String get tm {
    return Intl.message(
      'ТМ',
      name: 'tm',
      desc: '',
      args: [],
    );
  }

  /// `ББ`
  String get bb {
    return Intl.message(
      'ББ',
      name: 'bb',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get status {
    return Intl.message(
      'Статус',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Оценка / 100`
  String get grade100 {
    return Intl.message(
      'Оценка / 100',
      name: 'grade100',
      desc: '',
      args: [],
    );
  }

  /// `Нет информации`
  String get noInfo {
    return Intl.message(
      'Нет информации',
      name: 'noInfo',
      desc: '',
      args: [],
    );
  }

  /// `Понедельник`
  String get monday {
    return Intl.message(
      'Понедельник',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Вторник`
  String get tuesday {
    return Intl.message(
      'Вторник',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Среда`
  String get wednesday {
    return Intl.message(
      'Среда',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Четверг`
  String get thursday {
    return Intl.message(
      'Четверг',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Пятница`
  String get friday {
    return Intl.message(
      'Пятница',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Суббота`
  String get saturday {
    return Intl.message(
      'Суббота',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Воскресенье`
  String get sunday {
    return Intl.message(
      'Воскресенье',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Лекция`
  String get lecture {
    return Intl.message(
      'Лекция',
      name: 'lecture',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Тема`
  String get theme {
    return Intl.message(
      'Тема',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `США`
  String get usa {
    return Intl.message(
      'США',
      name: 'usa',
      desc: '',
      args: [],
    );
  }

  /// `Фильтр`
  String get filter {
    return Intl.message(
      'Фильтр',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные настройки`
  String get additionalSettings {
    return Intl.message(
      'Дополнительные настройки',
      name: 'additionalSettings',
      desc: '',
      args: [],
    );
  }

  /// `Инклюзивные технологии`
  String get inclusiveTechnology {
    return Intl.message(
      'Инклюзивные технологии',
      name: 'inclusiveTechnology',
      desc: '',
      args: [],
    );
  }

  /// `Версия для людей с ограниченными возможностями`
  String get versionForPeopleWithDisabilities {
    return Intl.message(
      'Версия для людей с ограниченными возможностями',
      name: 'versionForPeopleWithDisabilities',
      desc: '',
      args: [],
    );
  }

  /// `Выберите функции системы для людей с ограниченными возможностями`
  String get selectSystemFeaturesForPeopleWithDisabilities {
    return Intl.message(
      'Выберите функции системы для людей с ограниченными возможностями',
      name: 'selectSystemFeaturesForPeopleWithDisabilities',
      desc: '',
      args: [],
    );
  }

  /// `Выберите типы уведомлений, которые вы будете получать`
  String get selectTheTypesOfNotificationsYouWillReceive {
    return Intl.message(
      'Выберите типы уведомлений, которые вы будете получать',
      name: 'selectTheTypesOfNotificationsYouWillReceive',
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
