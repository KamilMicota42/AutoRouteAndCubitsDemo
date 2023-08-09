import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/cubits/string_cubit.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SecondFlowMain extends StatelessWidget {
  const SecondFlowMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StringCubit(),
      child: AutoTabsRouter(
        routes: const [
          RouteC(),
          RouteD(),
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
