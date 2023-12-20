import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatefulWidget {
  final Widget content;
  final void Function()? onPressed;

  const AppElevatedButton({super.key, required this.content, this.onPressed});

  @override
  State<AppElevatedButton> createState() => _AppElevatedButtonState();
}

class _AppElevatedButtonState extends State<AppElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: ElevatedButton(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: widget.content,
            ),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.blue),
          ),
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}
