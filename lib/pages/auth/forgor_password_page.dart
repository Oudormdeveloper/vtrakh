import 'package:vtrakh/core.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pleas enter your email'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              KVTextFormField(
                label: "Email",
                hitText: "Name@gmail.com",
              ),
              VerticalSpacing(),
              KVButton(
                text: 'Send',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
