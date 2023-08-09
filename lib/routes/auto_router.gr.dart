// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route_demo/views/first_flow/first_flow_main.dart' as _i1;
import 'package:auto_route_demo/views/first_flow/view_a.dart' as _i3;
import 'package:auto_route_demo/views/first_flow/view_b.dart' as _i4;
import 'package:auto_route_demo/views/second_flow/second_flow_main.dart' as _i2;
import 'package:auto_route_demo/views/second_flow/view_c.dart' as _i5;
import 'package:auto_route_demo/views/second_flow/view_d.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    FirstFlowMain.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FirstFlowMain(),
      );
    },
    SecondFlowMain.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SecondFlowMain(),
      );
    },
    RouteA.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ViewA(),
      );
    },
    RouteB.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ViewB(),
      );
    },
    RouteC.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ViewC(),
      );
    },
    RouteD.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ViewD(),
      );
    },
  };
}

/// generated route for
/// [_i1.FirstFlowMain]
class FirstFlowMain extends _i7.PageRouteInfo<void> {
  const FirstFlowMain({List<_i7.PageRouteInfo>? children})
      : super(
          FirstFlowMain.name,
          initialChildren: children,
        );

  static const String name = 'FirstFlowMain';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SecondFlowMain]
class SecondFlowMain extends _i7.PageRouteInfo<void> {
  const SecondFlowMain({List<_i7.PageRouteInfo>? children})
      : super(
          SecondFlowMain.name,
          initialChildren: children,
        );

  static const String name = 'SecondFlowMain';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ViewA]
class RouteA extends _i7.PageRouteInfo<void> {
  const RouteA({List<_i7.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ViewB]
class RouteB extends _i7.PageRouteInfo<void> {
  const RouteB({List<_i7.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ViewC]
class RouteC extends _i7.PageRouteInfo<void> {
  const RouteC({List<_i7.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ViewD]
class RouteD extends _i7.PageRouteInfo<void> {
  const RouteD({List<_i7.PageRouteInfo>? children})
      : super(
          RouteD.name,
          initialChildren: children,
        );

  static const String name = 'RouteD';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
