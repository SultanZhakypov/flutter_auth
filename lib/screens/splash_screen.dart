import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_authorization/bloc/bloc/global_cubit.dart';
import 'package:flutter_authorization/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<GlobalCubit, GlobalState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            authorized: () => context.router.pushAndPopUntil(
              const HomeScreenRoute(),
              predicate: (_) => false,
            ),
            unauthorized: () => context.router.pushAndPopUntil(
              const LoginScreenRoute(),
              predicate: (_) => false,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator.adaptive(),
            SizedBox(
              height: 16,
            ),
            Text('Загрузка....'),
          ],
        ),
      ),
    );
  }
}
