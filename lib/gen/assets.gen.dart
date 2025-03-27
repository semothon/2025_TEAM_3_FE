/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen (Modified for SVG)
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  SvgGenImage get notification => const SvgGenImage('assets/icons/notification.svg');
  SvgGenImage get bottomCommunity => const SvgGenImage('assets/icons/bottom_community.svg');
  SvgGenImage get bottomExplore => const SvgGenImage('assets/icons/bottom_explore.svg');
  SvgGenImage get bottomHome => const SvgGenImage('assets/icons/bottom_home.svg');
  SvgGenImage get bottomMy => const SvgGenImage('assets/icons/bottom_my.svg');
  SvgGenImage get loginLogo => const SvgGenImage('assets/icons/login_logo.svg');
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');
  SvgGenImage get upcomingSchaduleArrow => const SvgGenImage('assets/icons/upcoming_schedule_arrow.svg');

  List<SvgGenImage> get values => [
    notification,
    bottomCommunity,
    bottomExplore,
    bottomHome,
    bottomMy,
    loginLogo,
    logo,
    upcomingSchaduleArrow,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
    Alignment alignment = Alignment.center,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      width: width,
      height: height,
      fit: fit,
      color: color,
      alignment: alignment,
    );
  }

  String get path => _assetName;
  String get keyName => _assetName;
}
