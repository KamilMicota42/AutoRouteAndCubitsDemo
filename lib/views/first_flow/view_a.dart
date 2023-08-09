import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/cubits/number_cubit.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ViewA extends StatefulWidget {
  const ViewA({super.key});

  @override
  State<ViewA> createState() => _ViewAState();
}

class _ViewAState extends State<ViewA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('View A'),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<NumberCubit>(context).increment();
              },
              child: const Text('Press this to increment the number'),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<NumberCubit>(context).reset();
              },
              child: const Text('Reset'),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigate(const RouteB());
              },
              child: const Text('Got to view B'),
            ),
          ],
        ),
      ),
    );
  }
}
