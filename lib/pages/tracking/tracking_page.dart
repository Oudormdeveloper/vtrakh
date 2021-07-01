import 'package:flutter/cupertino.dart';
import 'package:vtrakh/core.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: cPrimary,
          ),
          Positioned(
            right: 20,
            top: 80.0,
            child: buildContainerIcon(CupertinoIcons.layers_alt_fill),
          ),
          Positioned(
            right: 20,
            top: 140.0,
            child: buildContainerIcon(Icons.traffic_outlined),
          ),
          Positioned(
            right: 20,
            top: 200.0,
            child: buildContainerIcon(CupertinoIcons.location_north),
          ),
        ],
      ),
    );
  }

  Container buildContainerIcon(IconData icon) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ]),
      child: Icon(
        icon,
        color: cPrimary,
      ),
    );
  }
}
