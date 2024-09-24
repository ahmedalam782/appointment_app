import 'package:appointment_app/auth/view/screens/register_screen.dart';
import 'package:appointment_app/home/view/screens/home_screen.dart';
import 'package:appointment_app/home_tab/view/widgets/home_tab.dart';
import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:appointment_app/shared/utiles/validation.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  bool isPasswordShow = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .09),
          child: ListView(
            children: [
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.primaryColor,
                    ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 14,
                      color: AppTheme.grey,
                    ),
              ),
              SizedBox(
                height: height * .036,
              ),
              CustomTextFormField(
                hintText: 'Email',
                controller: _emailController,
                validator: (value) => Validation.validateEmail(
                    value, "Enter a valid email address"),
              ),
              SizedBox(
                height: height * .02,
              ),
              CustomTextFormField(
                hintText: 'Password',
                controller: _passwordController,
                validator: (value) => Validation.validatePassword(
                    value, "The password field must be at least 8 characters."),
                obscureText: isPasswordShow,
                suffixIcon: IconButton(
                  onPressed: () {
                    isPasswordShow = !isPasswordShow;
                    setState(() {});
                  },
                  icon: isPasswordShow
                      ? const Icon(
                          Icons.visibility_off,
                          color: AppTheme.primaryColor,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: AppTheme.primaryColor,
                        ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = value!;
                      setState(() {});
                    },
                    fillColor: const WidgetStatePropertyAll(AppTheme.white),
                    checkColor: AppTheme.primaryColor,
                  ),
                  Text(
                    "Remember me",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 12,
                          color: AppTheme.grey,
                        ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 12,
                                color: AppTheme.primaryColor,
                              ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              CustomButton(
                btnTitle: 'Login',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                  }
                },
              ),
              SizedBox(
                height: height * .04,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 5,
                      color: AppTheme.grey.withOpacity(.5),
                    ),
                  ),
                  Text(
                    "Or sign in with",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 12,
                          color: AppTheme.grey,
                        ),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 5,
                      color: AppTheme.grey.withOpacity(.5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/google_icon.png")),
                  SizedBox(
                    width: width * .02,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/ios_icon.png")),
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet?  ",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 11,
                          color: AppTheme.grey,
                        ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RegisterScreen.routeName);
                    },
                    child: Text(
                      "Sign Up ",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 11,
                                color: AppTheme.primaryColor,
                              ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
