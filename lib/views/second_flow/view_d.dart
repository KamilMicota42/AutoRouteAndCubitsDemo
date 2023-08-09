import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/cubits/string_cubit.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ViewD extends StatefulWidget {
  const ViewD({super.key});

  @override
  State<ViewD> createState() => _ViewDState();
}

class _ViewDState extends State<ViewD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<StringCubit, String>(
              builder: (context, state) {
                return Text(state);
              },
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigate(const RouteA());
              },
              child: const Text('Got back to A'),
            ),
          ],
        ),
      ),
    );
  }
}
