import 'package:flutter/cupertino.dart';
import 'package:vtrakh/core.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.search),
          onPressed: () {},
        ),
        title: Text('Alert'),
      ),
    );
  }
}
