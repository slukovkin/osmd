import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Home.page, initial: true, children: [
          AutoRoute(page: News.page, path: 'news'),
          AutoRoute(page: Info.page, path: 'info'),
          AutoRoute(page: Meters.page, path: 'meters', children: [
            AutoRoute(page: MeterEdit.page, path: 'meter_edit'),
            AutoRoute(page: MetersHistory.page, path: 'meter_history'),
          ]),
          AutoRoute(page: Settings.page, path: 'settings'),
        ]),
        // AutoRoute(
        //   page: MetersRoute.page,
        //   path: '/meters',
        // )
      ];
}
