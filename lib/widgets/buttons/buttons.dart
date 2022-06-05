import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.onPress,
    required this.text,
    required this.isLoading,
    required this.isFullFilled,
  }) : super(key: key);

  final Function() onPress;
  final String text;
  final bool isLoading;
  final bool isFullFilled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: isFullFilled
              ? isLoading
                  ? null
                  : onPress
              : null,
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator.adaptive())
              : Text(text),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff4a86cc),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
