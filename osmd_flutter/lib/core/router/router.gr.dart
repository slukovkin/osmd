// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:osmd_flutter/features/home/presentation/pages/home.dart' as _i1;
import 'package:osmd_flutter/features/info/presentation/pages/info.dart' as _i2;
import 'package:osmd_flutter/features/meters/presentation/pages/meter_edit.dart'
    as _i3;
import 'package:osmd_flutter/features/meters/presentation/pages/meters.dart'
    as _i4;
import 'package:osmd_flutter/features/meters/presentation/pages/meters_history.dart'
    as _i5;
import 'package:osmd_flutter/features/news/presentation/pages/news.dart' as _i6;
import 'package:osmd_flutter/features/settings/presentation/pages/settings.dart'
    as _i7;

/// generated route for
/// [_i1.Home]
class Home extends _i8.PageRouteInfo<void> {
  const Home({List<_i8.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.Home();
    },
  );
}

/// generated route for
/// [_i2.Info]
class Info extends _i8.PageRouteInfo<void> {
  const Info({List<_i8.PageRouteInfo>? children})
      : super(
          Info.name,
          initialChildren: children,
        );

  static const String name = 'Info';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.Info();
    },
  );
}

/// generated route for
/// [_i3.MeterEdit]
class MeterEdit extends _i8.PageRouteInfo<MeterEditArgs> {
  MeterEdit({
    _i9.Key? key,
    required String title,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MeterEdit.name,
          args: MeterEditArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MeterEdit';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MeterEditArgs>();
      return _i3.MeterEdit(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class MeterEditArgs {
  const MeterEditArgs({
    this.key,
    required this.title,
  });

  final _i9.Key? key;

  final String title;

  @override
  String toString() {
    return 'MeterEditArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i4.Meters]
class Meters extends _i8.PageRouteInfo<void> {
  const Meters({List<_i8.PageRouteInfo>? children})
      : super(
          Meters.name,
          initialChildren: children,
        );

  static const String name = 'Meters';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.Meters();
    },
  );
}

/// generated route for
/// [_i5.MetersHistory]
class MetersHistory extends _i8.PageRouteInfo<void> {
  const MetersHistory({List<_i8.PageRouteInfo>? children})
      : super(
          MetersHistory.name,
          initialChildren: children,
        );

  static const String name = 'MetersHistory';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.MetersHistory();
    },
  );
}

/// generated route for
/// [_i6.News]
class News extends _i8.PageRouteInfo<void> {
  const News({List<_i8.PageRouteInfo>? children})
      : super(
          News.name,
          initialChildren: children,
        );

  static const String name = 'News';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.News();
    },
  );
}

/// generated route for
/// [_i7.Settings]
class Settings extends _i8.PageRouteInfo<void> {
  const Settings({List<_i8.PageRouteInfo>? children})
      : super(
          Settings.name,
          initialChildren: children,
        );

  static const String name = 'Settings';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.Settings();
    },
  );
}
