import 'package:flutter/cupertino.dart';
import 'package:vtrakh/core.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Container(
                  width: 106.0,
                  height: 106.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: cSecondary,
                    ),
                    shape: BoxShape.circle,
                    color: cPrimary,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ItemTile(
            text: "Edit Profile",
            icon: Icons.lock,
            onTap: () => Get.to(EditProfilePage()),
          ),
          ItemTile(text: "Change Password", icon: Icons.lock),
          VerticalSpacing(of: 30.0),
          ItemTile(
            text: "Language",
            icon: Icons.person,
            isTrailing: true,
          ),
          ItemTile(text: "Feedback", icon: Icons.comment),
          VerticalSpacing(of: 30.0),
          ItemTile(text: "Payment", icon: Icons.attach_money),
        ],
      ),
    );
  }
}
