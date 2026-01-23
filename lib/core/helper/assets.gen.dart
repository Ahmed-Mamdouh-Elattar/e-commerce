// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bag.png
  AssetGenImage get bag => const AssetGenImage('assets/images/bag.png');

  /// File path: assets/images/dummy_acccessories.png
  AssetGenImage get dummyAcccessories =>
      const AssetGenImage('assets/images/dummy_acccessories.png');

  /// File path: assets/images/dummy_bag.png
  AssetGenImage get dummyBag =>
      const AssetGenImage('assets/images/dummy_bag.png');

  /// File path: assets/images/dummy_hoodie.png
  AssetGenImage get dummyHoodie =>
      const AssetGenImage('assets/images/dummy_hoodie.png');

  /// File path: assets/images/dummy_product1.png
  AssetGenImage get dummyProduct1 =>
      const AssetGenImage('assets/images/dummy_product1.png');

  /// File path: assets/images/dummy_product2.png
  AssetGenImage get dummyProduct2 =>
      const AssetGenImage('assets/images/dummy_product2.png');

  /// File path: assets/images/dummy_shoes.png
  AssetGenImage get dummyShoes =>
      const AssetGenImage('assets/images/dummy_shoes.png');

  /// File path: assets/images/dummy_short.png
  AssetGenImage get dummyShort =>
      const AssetGenImage('assets/images/dummy_short.png');

  /// File path: assets/images/email.png
  AssetGenImage get email => const AssetGenImage('assets/images/email.png');

  /// File path: assets/images/error.png
  AssetGenImage get error => const AssetGenImage('assets/images/error.png');

  /// File path: assets/images/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/images/google_icon.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/search.png
  AssetGenImage get search => const AssetGenImage('assets/images/search.png');

  /// File path: assets/images/splash_logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/splash_logo.png');

  /// File path: assets/images/success.png
  AssetGenImage get success => const AssetGenImage('assets/images/success.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bag,
    dummyAcccessories,
    dummyBag,
    dummyHoodie,
    dummyProduct1,
    dummyProduct2,
    dummyShoes,
    dummyShort,
    email,
    error,
    googleIcon,
    profile,
    search,
    splashLogo,
    success,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_down.svg
  String get arrowDown => 'assets/svg/arrow_down.svg';

  /// File path: assets/svg/bag.svg
  String get bag => 'assets/svg/bag.svg';

  /// File path: assets/svg/balck_favorite.svg
  String get balckFavorite => 'assets/svg/balck_favorite.svg';

  /// File path: assets/svg/heart.svg
  String get heart => 'assets/svg/heart.svg';

  /// File path: assets/svg/home.svg
  String get home => 'assets/svg/home.svg';

  /// File path: assets/svg/notificationbing.svg
  String get notificationbing => 'assets/svg/notificationbing.svg';

  /// File path: assets/svg/person.svg
  String get person => 'assets/svg/person.svg';

  /// File path: assets/svg/receipt.svg
  String get receipt => 'assets/svg/receipt.svg';

  /// File path: assets/svg/search.svg
  String get search => 'assets/svg/search.svg';

  /// List of all assets
  List<String> get values => [
    arrowDown,
    bag,
    balckFavorite,
    heart,
    home,
    notificationbing,
    person,
    receipt,
    search,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
