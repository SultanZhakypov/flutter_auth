import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_authorization/bloc/bloc/auth/auth_bloc.dart';
import 'package:flutter_authorization/repository/app_storage.dart';
import 'package:flutter_authorization/repository/auth_repo.dart';
import 'package:flutter_authorization/routes/routes.gr.dart';

import 'package:flutter_authorization/widgets/buttons/buttons.dart';
import 'package:flutter_authorization/widgets/textfield/def_textfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmsScreen extends StatefulWidget {
  const SmsScreen({
    Key? key,
    required this.token,
  }) : super(key: key);

  final String token;

  @override
  State<SmsScreen> createState() => _SmsScreenState();
}

class _SmsScreenState extends State<SmsScreen> {
  final controller = TextEditingController();
  final isFullFilled = ValueNotifier<bool>(false);

  @override
  void initState() {
    controller.addListener(() {
      if (controller.text.length == 4) {
        isFullFilled.value = true;
      } else {
        isFullFilled.value = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Подтверждение номера',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Введите код из смс',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const Spacer(),
            DefaultTextField(
              maxLength: 4,
              controller: controller,
              hint: 'Введите смс-код',
            ),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Получить код повторно',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xff007aff),
                  fontSize: 15,
                ),
              ),
            ),
            const Spacer(),
            BlocProvider.value(
              value: AuthBloc(
                repo: RepositoryProvider.of<AuthRepo>(context), storage: RepositoryProvider.of<AppStorage>(context),
              ),
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(success: (_) {
                    context.router.pushAndPopUntil(
                      const HomeScreenRoute(),
                      predicate: (_) => false,
                    );
                  });
                },
                builder: (context, state) {
                  return ValueListenableBuilder(
                    valueListenable: isFullFilled,
                    builder: (context, a, b) {
                      return DefaultButton(
                        onPress: () {
                          BlocProvider.of<AuthBloc>(context).add(
                            AuthEvent.sendCode(
                              code: controller.text,
                              token: widget.token,
                            ),
                          );
                        },
                        text: 'Далее',
                        isLoading: state.isLoading,
                        isFullFilled: isFullFilled.value,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
