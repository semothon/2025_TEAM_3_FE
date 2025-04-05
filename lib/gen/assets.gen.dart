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

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow_left.svg');

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// File path: assets/icons/bottom_community.svg
  SvgGenImage get bottomCommunity =>
      const SvgGenImage('assets/icons/bottom_community.svg');

  /// File path: assets/icons/bottom_explore.svg
  SvgGenImage get bottomExplore =>
      const SvgGenImage('assets/icons/bottom_explore.svg');

  /// File path: assets/icons/bottom_home.svg
  SvgGenImage get bottomHome =>
      const SvgGenImage('assets/icons/bottom_home.svg');

  /// File path: assets/icons/bottom_my.svg
  SvgGenImage get bottomMy => const SvgGenImage('assets/icons/bottom_my.svg');

  /// File path: assets/icons/bottom_ranking.svg
  SvgGenImage get bottomRanking =>
      const SvgGenImage('assets/icons/bottom_ranking.svg');

  /// File path: assets/icons/chat_send.svg
  SvgGenImage get chatSend => const SvgGenImage('assets/icons/chat_send.svg');

  /// File path: assets/icons/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/icons/filter.svg');

  /// File path: assets/icons/friend_table.svg
  SvgGenImage get friendTable =>
      const SvgGenImage('assets/icons/friend_table.svg');

  /// File path: assets/icons/group.svg
  SvgGenImage get group => const SvgGenImage('assets/icons/group.svg');

  /// File path: assets/icons/login_logo.svg
  SvgGenImage get loginLogo => const SvgGenImage('assets/icons/login_logo.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/rank_1.svg
  SvgGenImage get rank1 => const SvgGenImage('assets/icons/rank_1.svg');

  /// File path: assets/icons/rank_2.svg
  SvgGenImage get rank2 => const SvgGenImage('assets/icons/rank_2.svg');

  /// File path: assets/icons/rank_3.svg
  SvgGenImage get rank3 => const SvgGenImage('assets/icons/rank_3.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/setting.svg');

  /// File path: assets/icons/study_detail_chat.svg
  SvgGenImage get studyDetailChat =>
      const SvgGenImage('assets/icons/study_detail_chat.svg');

  /// File path: assets/icons/study_detail_pin.svg
  SvgGenImage get studyDetailPin =>
      const SvgGenImage('assets/icons/study_detail_pin.svg');

  /// File path: assets/icons/timetable.svg
  SvgGenImage get timetable => const SvgGenImage('assets/icons/timetable.svg');

  /// File path: assets/icons/tree_0.svg
  SvgGenImage get tree0 => const SvgGenImage('assets/icons/tree_0.svg');

  /// File path: assets/icons/tree_1.svg
  SvgGenImage get tree1 => const SvgGenImage('assets/icons/tree_1.svg');

  /// File path: assets/icons/tree_2.svg
  SvgGenImage get tree2 => const SvgGenImage('assets/icons/tree_2.svg');

  /// File path: assets/icons/tree_3.svg
  SvgGenImage get tree3 => const SvgGenImage('assets/icons/tree_3.svg');

  /// File path: assets/icons/tree_4.svg
  SvgGenImage get tree4 => const SvgGenImage('assets/icons/tree_4.svg');

  /// File path: assets/icons/upcoming_schedule_arrow.svg
  SvgGenImage get upcomingScheduleArrow =>
      const SvgGenImage('assets/icons/upcoming_schedule_arrow.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    arrowLeft,
    arrowRight,
    bottomCommunity,
    bottomExplore,
    bottomHome,
    bottomMy,
    bottomRanking,
    chatSend,
    filter,
    friendTable,
    group,
    loginLogo,
    logo,
    notification,
    rank1,
    rank2,
    rank3,
    search,
    setting,
    studyDetailChat,
    studyDetailPin,
    timetable,
    tree0,
    tree1,
    tree2,
    tree3,
    tree4,
    upcomingScheduleArrow,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

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
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
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
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
