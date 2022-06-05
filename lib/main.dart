import 'package:flutter/material.dart';
import 'package:flutter_authorization/bloc/bloc/auth/auth_bloc.dart';
import 'package:flutter_authorization/bloc/bloc/global_cubit.dart';
import 'package:flutter_authorization/repository/app_storage.dart';
import 'package:flutter_authorization/repository/auth_repo.dart';
import 'package:flutter_authorization/repository/dio_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_authorization/routes/routes.gr.dart';

void main() => runApp(const MyApp());
final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
      ),
    );
  }
}

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => AppStorage(),
          ),
          RepositoryProvider(
            create: (context) => DioSettings(),
          ),
          RepositoryProvider(
            create: (context) => AuthRepo(
              dio: RepositoryProvider.of<DioSettings>(context).dio,
            ),
          ),
        ],
        child: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => GlobalCubit(
              storage: RepositoryProvider.of<AppStorage>(context),
            ),
          ),
          BlocProvider(
            create: (context) => AuthBloc(
              storage: RepositoryProvider.of<AppStorage>(context),
              repo: RepositoryProvider.of<AuthRepo>(context),
            ),
          ),
        ], child: child,),);
  }
}
