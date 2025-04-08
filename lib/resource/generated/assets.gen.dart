/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/account.svg
  SvgGenImage get account => const SvgGenImage('assets/images/account.svg');

  /// File path: assets/images/checked.png
  AssetGenImage get checkedPng => const AssetGenImage('assets/images/checked.png');

  /// File path: assets/images/checked.svg
  SvgGenImage get checkedSvg => const SvgGenImage('assets/images/checked.svg');

  /// File path: assets/images/checked1.svg
  SvgGenImage get checked1 => const SvgGenImage('assets/images/checked1.svg');

  /// File path: assets/images/doos_logo.png
  AssetGenImage get doosLogo => const AssetGenImage('assets/images/doos_logo.png');

  /// File path: assets/images/facebook-logo.png
  AssetGenImage get facebookLogo => const AssetGenImage('assets/images/facebook-logo.png');

  /// File path: assets/images/favoirt.svg
  SvgGenImage get favoirt => const SvgGenImage('assets/images/favoirt.svg');

  /// File path: assets/images/get_start.png
  AssetGenImage get getStart => const AssetGenImage('assets/images/get_start.png');

  /// File path: assets/images/google-logo.png
  AssetGenImage get googleLogo => const AssetGenImage('assets/images/google-logo.png');

  /// File path: assets/images/home.svg
  SvgGenImage get home => const SvgGenImage('assets/images/home.svg');

  /// File path: assets/images/in_box.svg
  SvgGenImage get inBox => const SvgGenImage('assets/images/in_box.svg');

  /// File path: assets/images/rental.svg
  SvgGenImage get rental => const SvgGenImage('assets/images/rental.svg');

  /// File path: assets/images/star.png
  AssetGenImage get starPng => const AssetGenImage('assets/images/star.png');

  /// File path: assets/images/star.svg
  SvgGenImage get starSvg => const SvgGenImage('assets/images/star.svg');

  /// List of all assets
  List<dynamic> get values => [
    account,
    checkedPng,
    checkedSvg,
    checked1,
    doosLogo,
    facebookLogo,
    favoirt,
    getStart,
    googleLogo,
    home,
    inBox,
    rental,
    starPng,
    starSvg,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(_assetName, assetBundle: bundle, packageName: package, theme: theme);
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
