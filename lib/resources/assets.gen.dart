/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_Vector.svg
  SvgGenImage get icVector => const SvgGenImage('assets/icons/ic_Vector.svg');
  SvgGenImage get icStar1 => const SvgGenImage('assets/icons/ic_Star1.svg');
   SvgGenImage get icStar2 => const SvgGenImage('assets/icons/ic_Star2.svg');

  /// File path: assets/icons/ic_clock.svg
  SvgGenImage get icClock => const SvgGenImage('assets/icons/ic_clock.svg');

  /// File path: assets/icons/ic_crown.svg
  SvgGenImage get icCrown => const SvgGenImage('assets/icons/ic_crown.svg');

  /// File path: assets/icons/ic_crown1.svg
  SvgGenImage get icCrown1 => const SvgGenImage('assets/icons/ic_crown1.svg');

  /// File path: assets/icons/ic_like.svg
  SvgGenImage get icLike => const SvgGenImage('assets/icons/ic_like.svg');
  SvgGenImage get icStar => const SvgGenImage('assets/icons/ic_star.svg');

  /// File path: assets/icons/ic_note-text.svg
  SvgGenImage get icNoteText =>
      const SvgGenImage('assets/icons/ic_note-text.svg');

  /// File path: assets/icons/ic_power.svg
  SvgGenImage get icPower => const SvgGenImage('assets/icons/ic_power.svg');

  /// File path: assets/icons/ic_securitysafe.svg
  SvgGenImage get icSecuritysafe =>
      const SvgGenImage('assets/icons/ic_securitysafe.svg');

  /// File path: assets/icons/ic_verify.svg
  SvgGenImage get icVerify => const SvgGenImage('assets/icons/ic_verify.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icVector,
        icClock,
        icCrown,
        icCrown1,
        icLike,
        icNoteText,
        icPower,
        icSecuritysafe,
        icVerify
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Frame.png
  AssetGenImage get frame => const AssetGenImage('assets/images/Frame.png');

  /// File path: assets/images/Group17.png
  AssetGenImage get group17 => const AssetGenImage('assets/images/Group17.png');
  AssetGenImage get group862 => const AssetGenImage('assets/images/Group862.png');
  AssetGenImage get group863 => const AssetGenImage('assets/images/Group863.png');

  /// File path: assets/images/Layer 1.png
  AssetGenImage get layer1 => const AssetGenImage('assets/images/Layer 1.png');

  /// File path: assets/images/Subtract.png
  AssetGenImage get subtract =>
      const AssetGenImage('assets/images/Subtract.png');

  /// File path: assets/images/crown.png
  AssetGenImage get crown => const AssetGenImage('assets/images/crown.png');

  /// List of all assets
  List<AssetGenImage> get values => [frame, group17, layer1, subtract, crown];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
