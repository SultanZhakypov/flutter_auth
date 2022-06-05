import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_authorization/bloc/bloc/auth/auth_bloc.dart';
import 'package:flutter_authorization/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (_) => context.router.pushAndPopUntil(
                  const LoginScreenRoute(),
                  predicate: (_) => false,
                ),
              );
            },
            builder: (context, state) {
              return state.isLoading
                  ? Center(
                      child: Container(
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(right: 8),
                        child: const CircularProgressIndicator(
                          backgroundColor: Colors.blue,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context).add(
                          const AuthEvent.logout(),
                        );
                      },
                      icon: const Icon(
                        Icons.logout_outlined,
                      ),
                    );
            },
          ),
          const SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }
}
