import 'package:ecommerce1/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../components/custom_suffix_icon.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? email;
  String? password;
  String? confirmPassword;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 30),
            buildEmailFormField(),
            SizedBox(height: 30),
            buildPasswordFormField(),
            SizedBox(height: 30),
            buildConfPasswordFormField(),
            FormError(errors: errors),
            SizedBox(height: 40),
            DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  // Go to comprete profile page
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              },
            ),
          ],
        ));
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (password != value) {
          addError(error: kMatchPassError);
          return '';
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: ((newValue) => password = newValue),
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kPassNullError);
        } else if (value.length >= 8) {
          errors.remove(kShortPassError);
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          errors.add(kPassNullError);
          return '';
        } else if (value.length < 8) {
          errors.add(kShortPassError);
          return '';
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: ((newValue) => email = newValue),
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            removeError(error: kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value)) {
          setState(() {
            removeError(error: kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            addError(error: kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          setState(() {
            addError(error: kInvalidEmailError);
          });
          return '';
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
    );
  }
}
