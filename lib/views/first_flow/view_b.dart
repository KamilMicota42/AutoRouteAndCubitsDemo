import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/cubits/number_cubit.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ViewB extends StatefulWidget {
  const ViewB({super.key});

  @override
  State<ViewB> createState() => _ViewBState();
}

class _ViewBState extends State<ViewB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('View B'),
            BlocBuilder<NumberCubit, int>(
              builder: (context, state) {
                return Text(
                  state.toString(),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigate(
                    const RouteA()); //pops till the route is the same as the argument or adds new one if its not in stack
              },
              child: const Text('Go to view A'),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigate(const RouteC());
              },
              child: const Text('Go to view C'),
            ),
          ],
        ),
      ),
    );
  }
}
