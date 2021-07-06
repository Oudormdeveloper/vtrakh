import 'package:flutter/cupertino.dart';
import 'package:vtrakh/core.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Vehicles List'),
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.search,
          ),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline_rounded,
            ),
            iconSize: 30.0,
            color: cPrimary,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            VehiclesItem(
              vehiclesName: "Lexus RX300",
              dateTime: "23-10-2020 09:08:30",
              statusText: "19 km/h",
              vehiclesStatus: VehiclesStatus.RUNNING,
            ),
            VehiclesItem(
              vehiclesName: "Hyundai",
              dateTime: "23-10-2020 09:08:30",
              statusText: "15 km/h",
              vehiclesStatus: VehiclesStatus.IDLE,
            ),
            VehiclesItem(
              vehiclesName: "Rang Rover",
              dateTime: "23-10-2020 09:08:30",
              statusText: "20 km/h",
              vehiclesStatus: VehiclesStatus.NO_RESPONE,
            ),
            VehiclesItem(
              vehiclesName: "Reptor",
              dateTime: "23-10-2020 09:08:30",
              statusText: "5h ago",
              vehiclesStatus: VehiclesStatus.STOP,
            ),
          ],
        ),
      ),
    );
  }
}

class VehiclesItem extends StatelessWidget {
  const VehiclesItem({
    Key? key,
    this.vehiclesName,
    this.dateTime,
    this.statusText,
    required this.vehiclesStatus,
  }) : super(key: key);
  final String? vehiclesName, dateTime, statusText;
  final VehiclesStatus vehiclesStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.0),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      height: 100,
      color: cWhite,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: cWhite,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.0,
                  color: vehiclesStatus.status.color,
                ),
              ),
              child: Icon(
                CupertinoIcons.car_detailed,
                color: vehiclesStatus.status.color,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehiclesName!,
                    style: titleTextStyle().copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  VerticalSpacing(
                    of: 10.0,
                  ),
                  Text(
                    dateTime!,
                    style: subTitleTextStyle(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.circle,
                      color: vehiclesStatus.status.color,
                      size: 10.0,
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      vehiclesStatus.status.text,
                      style: titleTextStyle().copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                VerticalSpacing(
                  of: 10.0,
                ),
                Text(
                  statusText!,
                  style: titleTextStyle().copyWith(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
