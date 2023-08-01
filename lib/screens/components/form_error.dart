import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({String? error}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child:
              SvgPicture.asset('assets/icons/Error.svg', height: 14, width: 14),
        ),
        SizedBox(height: 10),
        Text(error!),
      ],
    );
  }
}
