import 'package:flutter/cupertino.dart';
import 'package:vtrakh/core.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    KVTextFormField(
                      label: 'Name',
                      hitText: 'Your Name',
                    ),
                    KVTextFormField(
                      label: 'Email',
                      hitText: 'name@gamil.com',
                    ),
                    KVTextFormField(
                      label: 'Password',
                      hitText: '******',
                    ),
                    KVTextFormField(
                      label: 'Confirm Password',
                      hitText: '*****',
                    ),
                    VerticalSpacing(),
                    KVButton(text: 'Register', press: () {}),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have account?',
                    style: TextStyle(
                      color: cSecondary,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.LOGIN);
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: cPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
