import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_authorization/bloc/bloc/auth/auth_bloc.dart';
import 'package:flutter_authorization/routes/routes.dart';
import 'package:flutter_authorization/widgets/buttons/buttons.dart';
import 'package:flutter_authorization/widgets/textfield/def_textfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final controller = TextEditingController();
  final isFullFilled = ValueNotifier<bool>(false);

  @override
  void initState() {
    controller.addListener(() {
      if (controller.text.length == 12) {
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
          'Вход',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Войти',
              style: TextStyle(
                height: 1.2,
                fontSize: 34,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.41,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Ваш номер телефона',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.4,
                color: Color.fromARGB(255, 150, 151, 148),
                letterSpacing: 0.4,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            DefaultTextField(
              controller: controller,
              hint: 'Введите номер телефона',
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.03,
              ),
            ),
            const Spacer(),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: ((token) {
                    context.router.push(SmsScreenRoute(token: token));
                  }),
                );
              },
              builder: (context, state) {
                return ValueListenableBuilder(
                    valueListenable: isFullFilled,
                    builder: (context, a, b) {
                      return DefaultButton(
                        isFullFilled: isFullFilled.value,
                        isLoading: state.isLoading,
                        onPress: () {
                          if (state.isLoading) {
                            BlocProvider.of<AuthBloc>(context).add(
                              AuthEvent.sendPhone(
                                phone: controller.text.trim(),
                              ),
                            );
                          }
                        },
                        text: 'Далее',
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
