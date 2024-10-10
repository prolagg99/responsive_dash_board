import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
