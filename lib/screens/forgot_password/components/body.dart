import 'package:ecommerce1/screens/components/default_button.dart';
import 'package:ecommerce1/screens/components/form_error.dart';
import 'package:ecommerce1/screens/components/no_account_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../components/custom_suffix_icon.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                'Forgor Password',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              ForgorPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgorPasswordForm extends StatefulWidget {
  const ForgorPasswordForm({super.key});

  @override
  State<ForgorPasswordForm> createState() => _ForgorPasswordFormState();
}

class _ForgorPasswordFormState extends State<ForgorPasswordForm> {
  List<String> errors = [];
  String? email;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: ((newValue) => email = newValue),
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              suffixIcon: CustomSuffixIcon(
                svgIcon: 'assets/icons/Mail.svg',
              ),
            ),
          ),
          SizedBox(height: 30),
          FormError(errors: errors),
          SizedBox(height: 60),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {}
              }),
          SizedBox(height: 60),
          NoAccountText(),
        ],
      ),
    );
  }
}
