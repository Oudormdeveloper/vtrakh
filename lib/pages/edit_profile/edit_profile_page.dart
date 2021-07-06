import 'package:vtrakh/core.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profle'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              VerticalSpacing(),
              Container(
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(top: kDefaultPadding),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 90.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          color: cBlack,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              VerticalSpacing(of: 50.0),
              KVTextFormField(
                label: "Name",
                hitText: 'Your Name',
              ),
              KVTextFormField(
                label: "Email",
                hitText: 'Your Email',
              ),
              VerticalSpacing(),
              KVButton(
                text: 'Update',
                press: () {
                  Get.back();
                  Get.snackbar(
                    'Hello',
                    "Your rofile has been update!!!",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: cPrimary,
                    colorText: cWhite,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
