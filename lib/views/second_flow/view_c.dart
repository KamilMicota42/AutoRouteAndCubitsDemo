import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/cubits/string_cubit.dart';
import 'package:auto_route_demo/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ViewC extends StatefulWidget {
  const ViewC({super.key});

  @override
  State<ViewC> createState() => _ViewCState();
}

class _ViewCState extends State<ViewC> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<StringCubit>(context)
                    .setTheString(controller.text);
                AutoRouter.of(context).navigate(const RouteD());
              },
              child: const Text('Go to D'),
            ),
          ],
        ),
      ),
    );
  }
}
