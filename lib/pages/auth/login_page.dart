import 'package:vtrakh/core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                    KVButton(
                      text: 'Login',
                      press: () {},
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account?',
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
                      Get.offNamed(AppRoutes.REGISTER);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: cPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
