import 'package:vtrakh/core.dart';
import 'package:vtrakh/pages/vehicles/vehicles.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    TrackingPage(),
    VehiclesPage(),
    AlertPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Tracking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dvr),
            label: 'Vehicles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Alert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: cPrimary,
        unselectedItemColor: cSecondary,
        showUnselectedLabels: true,
        // unselectedLabelStyle: TextStyle(color: cBlack),
        onTap: _onItemTapped,
      ),
    );
  }
}
