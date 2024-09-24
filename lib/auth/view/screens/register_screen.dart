import 'package:appointment_app/auth/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../shared/themes/app_theme.dart';
import '../../../shared/utiles/validation.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/RegisterScreen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isPasswordShow = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final TextEditingController phoneNumberController = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');

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
                "Create Account",
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
                "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!.",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 14,
                      color: AppTheme.grey,
                    ),
              ),
              SizedBox(
                height: height * .036,
              ),
              CustomTextFormField(
                  hintText: 'Full Name',
                  controller: _fullNameController,
                  validator: (value) => value != null
                      ? 'please Full name must not be empty'
                      : null),
              SizedBox(
                height: height * .02,
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
              SizedBox(
                height: height * .02,
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                cursorColor: AppTheme.primaryColor,
                selectorConfig: const SelectorConfig(
                    useEmoji: true,
                    leadingPadding: 12,
                    selectorType: PhoneInputSelectorType.DIALOG,
                    trailingSpace: false,
                    useBottomSheetSafeArea: true,
                    setSelectorButtonAsPrefixIcon: true
                    // useBottomSheetSafeArea: true,
                    ),
                textStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.black,
                    ),
                selectorTextStyle:
                    Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.primaryColor,
                        ),
                initialValue: number,
                textFieldController: phoneNumberController,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                      borderSide: BorderSide(
                        color: AppTheme.grey.withOpacity(.5),
                      ),
                    ),
                    hintStyle:
                        Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.grey,
                            ),
                    hintText: 'Phone number',
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      borderSide: BorderSide(
                        color: AppTheme.primaryColor,
                      ),
                    )),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
              SizedBox(
                height: height * .036,
              ),
              CustomButton(
                btnTitle: 'Create Account',
                onPressed: () {
                  if(formKey.currentState!.validate()){

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
                    "Already have an account yet?  ",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 11,
                          color: AppTheme.grey,
                        ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, LoginScreen.routeName);
                    },
                    child: Text(
                      "Sign in",
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
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
