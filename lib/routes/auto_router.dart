import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FirstFlowMain.page,
          initial: true,
          children: [
            AutoRoute(page: RouteA.page),
            AutoRoute(page: RouteB.page),
          ],
        ),
        AutoRoute(
          page: SecondFlowMain.page,
          children: [
            AutoRoute(page: RouteC.page),
            AutoRoute(page: RouteD.page),
          ],
        )
      ];
}
