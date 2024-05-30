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

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get cancel {
    return Intl.message(
      'Отменить',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Пункт выдачи`
  String get pickUpPoint {
    return Intl.message(
      'Пункт выдачи',
      name: 'pickUpPoint',
      desc: '',
      args: [],
    );
  }

  /// `Курьер`
  String get deliver {
    return Intl.message(
      'Курьер',
      name: 'deliver',
      desc: '',
      args: [],
    );
  }

  /// `Заказать`
  String get order {
    return Intl.message(
      'Заказать',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться`
  String get share {
    return Intl.message(
      'Поделиться',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Подобрали для вас`
  String get specialForYou {
    return Intl.message(
      'Подобрали для вас',
      name: 'specialForYou',
      desc: '',
      args: [],
    );
  }

  /// `Выбор способа доставки`
  String get chooseOptions {
    return Intl.message(
      'Выбор способа доставки',
      name: 'chooseOptions',
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

  /// `Список пуст`
  String get listIsEmpty {
    return Intl.message(
      'Список пуст',
      name: 'listIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Добавить адрес`
  String get addAddress {
    return Intl.message(
      'Добавить адрес',
      name: 'addAddress',
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

  /// `Уведомление удалено`
  String get notificationIsRemoved {
    return Intl.message(
      'Уведомление удалено',
      name: 'notificationIsRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Скидка`
  String get discount {
    return Intl.message(
      'Скидка',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `до 30%`
  String get up {
    return Intl.message(
      'до 30%',
      name: 'up',
      desc: '',
      args: [],
    );
  }

  /// `Оплата при получении`
  String get paymentUponReceipt {
    return Intl.message(
      'Оплата при получении',
      name: 'paymentUponReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Мой баланс`
  String get balance {
    return Intl.message(
      'Мой баланс',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Открыть кошелек`
  String get openWallet {
    return Intl.message(
      'Открыть кошелек',
      name: 'openWallet',
      desc: '',
      args: [],
    );
  }

  /// `Доставки`
  String get delivery {
    return Intl.message(
      'Доставки',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Ближайщие: Сегодня`
  String get upComing {
    return Intl.message(
      'Ближайщие: Сегодня',
      name: 'upComing',
      desc: '',
      args: [],
    );
  }

  /// `Получите товары по `
  String get getProductsBy {
    return Intl.message(
      'Получите товары по ',
      name: 'getProductsBy',
      desc: '',
      args: [],
    );
  }

  /// `QR-коду`
  String get byQr {
    return Intl.message(
      'QR-коду',
      name: 'byQr',
      desc: '',
      args: [],
    );
  }

  /// `Мои покупки`
  String get myPurchases {
    return Intl.message(
      'Мои покупки',
      name: 'myPurchases',
      desc: '',
      args: [],
    );
  }

  /// `Оставьте отзывы на товары`
  String get leaveReviewsForProducts {
    return Intl.message(
      'Оставьте отзывы на товары',
      name: 'leaveReviewsForProducts',
      desc: '',
      args: [],
    );
  }

  /// `Лист ожидания`
  String get waitingList {
    return Intl.message(
      'Лист ожидания',
      name: 'waitingList',
      desc: '',
      args: [],
    );
  }

  /// `Отложенные`
  String get delayed {
    return Intl.message(
      'Отложенные',
      name: 'delayed',
      desc: '',
      args: [],
    );
  }

  /// `Любимые бренды`
  String get favouriteBrands {
    return Intl.message(
      'Любимые бренды',
      name: 'favouriteBrands',
      desc: '',
      args: [],
    );
  }

  /// `Вы смотрели`
  String get youWatched {
    return Intl.message(
      'Вы смотрели',
      name: 'youWatched',
      desc: '',
      args: [],
    );
  }

  /// `В корзину`
  String get trash {
    return Intl.message(
      'В корзину',
      name: 'trash',
      desc: '',
      args: [],
    );
  }

  /// `Задать вопрос`
  String get askQuestion {
    return Intl.message(
      'Задать вопрос',
      name: 'askQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Обратитесь к нам, если нужна консультация`
  String get contactUsIfYouNeedAdvice {
    return Intl.message(
      'Обратитесь к нам, если нужна консультация',
      name: 'contactUsIfYouNeedAdvice',
      desc: '',
      args: [],
    );
  }

  /// `Мои способы оплаты`
  String get myPaymentMethods {
    return Intl.message(
      'Мои способы оплаты',
      name: 'myPaymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Возврат товара по браку`
  String get returnOfDefectiveGoods {
    return Intl.message(
      'Возврат товара по браку',
      name: 'returnOfDefectiveGoods',
      desc: '',
      args: [],
    );
  }

  /// `Активные сеансы`
  String get activeSessions {
    return Intl.message(
      'Активные сеансы',
      name: 'activeSessions',
      desc: '',
      args: [],
    );
  }

  /// `Отображение цен`
  String get displayPrices {
    return Intl.message(
      'Отображение цен',
      name: 'displayPrices',
      desc: '',
      args: [],
    );
  }

  /// `Киргизский сом`
  String get kyrgyzSom {
    return Intl.message(
      'Киргизский сом',
      name: 'kyrgyzSom',
      desc: '',
      args: [],
    );
  }

  /// `Политика конфиденциальности`
  String get privacyPolicy {
    return Intl.message(
      'Политика конфиденциальности',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `О приложении`
  String get aboutApp {
    return Intl.message(
      'О приложении',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Информация для клиентов`
  String get InformationForClients {
    return Intl.message(
      'Информация для клиентов',
      name: 'InformationForClients',
      desc: '',
      args: [],
    );
  }

  /// `Ваша персональная скидка на Wildberries`
  String get youPersonalDiscountonWB {
    return Intl.message(
      'Ваша персональная скидка на Wildberries',
      name: 'youPersonalDiscountonWB',
      desc: '',
      args: [],
    );
  }

  /// `Сумма выкупа`
  String get ransomAmount {
    return Intl.message(
      'Сумма выкупа',
      name: 'ransomAmount',
      desc: '',
      args: [],
    );
  }

  /// `Процент выкупа`
  String get redemptionPercentage {
    return Intl.message(
      'Процент выкупа',
      name: 'redemptionPercentage',
      desc: '',
      args: [],
    );
  }

  /// `Marketplace`
  String get marketplace {
    return Intl.message(
      'Marketplace',
      name: 'marketplace',
      desc: '',
      args: [],
    );
  }

  /// `Find the best place for your trip`
  String get findTheBestPlaceForYourTrip {
    return Intl.message(
      'Find the best place for your trip',
      name: 'findTheBestPlaceForYourTrip',
      desc: '',
      args: [],
    );
  }

  /// `Explore\nNear You!`
  String get explorennearYou {
    return Intl.message(
      'Explore\nNear You!',
      name: 'explorennearYou',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get explore {
    return Intl.message(
      'Explore',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `Goods of week`
  String get goodsOfWeek {
    return Intl.message(
      'Goods of week',
      name: 'goodsOfWeek',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Basket`
  String get basket {
    return Intl.message(
      'Basket',
      name: 'basket',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `By popularity`
  String get byPopularity {
    return Intl.message(
      'By popularity',
      name: 'byPopularity',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
