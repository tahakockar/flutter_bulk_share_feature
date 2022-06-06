import 'dart:io';

import 'package:firebase_admob/firebase_admob.dart';

class AdvertService {
  static final AdvertService _instance = AdvertService._internal();
  factory AdvertService() => _instance;
  late MobileAdTargetingInfo _targetingInfo;
  final String _bannerAd = Platform.isAndroid
      ? 'ca-app-pub-4761893182629464/2828714797'
      : 'ca-app-pub-4761893182629464~3211858178';

  AdvertService._internal() {
    _targetingInfo = MobileAdTargetingInfo(
      keywords: <String>['malaysia', 'uber', 'sports'],
      contentUrl: 'https://www.wcrop.com',
      nonPersonalizedAds: true,
    );
  }6

  showBanner() {
    BannerAd bannerAd = BannerAd(
      adUnitId: _bannerAd,
      size: AdSize.smartBanner,
      targetingInfo: _targetingInfo,
     listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      },
    );

    bannerAd
      ..load()
      ..show(
        anchorOffset: 50,
      );

    bannerAd.dispose();
  }

  showInterstitial() {
    InterstitialAd interstitialAd = InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: _targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );

    interstitialAd
      ..load()
      ..show();

    interstitialAd.dispose();
  }
}