import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/cubits/number_cubit.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FirstFlowMain extends StatelessWidget {
  const FirstFlowMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NumberCubit(),
      child: AutoTabsRouter(
        routes: const [
          RouteA(),
          RouteB(),
        ],
        builder: (context, child) {
          return Scaffold(
            body: child,
          );
        },
      ),
    );
  }
}
