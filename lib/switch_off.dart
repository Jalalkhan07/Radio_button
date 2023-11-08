import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchOnAndOff extends StatefulWidget {
  const SwitchOnAndOff({super.key});

  @override
  State<SwitchOnAndOff> createState() => _SwitchOnAndOffState();
}

class _SwitchOnAndOffState extends State<SwitchOnAndOff> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Swith On And Off',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 2.0,
                toggleColor: Colors.black12,
                switchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                toggleBorder: Border.all(
                  color: Colors.white,
                  width: 5.0,
                ),
                activeColor: Colors.green,
                inactiveColor: Colors.black38,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(height: 20.0),
              FlutterSwitch(
                width: 125.0,
                height: 55.0,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(height: 20.0),
              FlutterSwitch(
                activeText: "I am Active",
                inactiveText: "I am Inactive",
                value: status,
                valueFontSize: 16.0,
                width: 140,
                height: 80,
                borderRadius: 30.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(height: 10.0),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                activeToggleColor: Colors.purple,
                inactiveToggleColor: Colors.black,
                activeSwitchBorder: Border.all(
                  color: Colors.orange,
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                activeColor: Colors.deepPurpleAccent,
                inactiveColor: Colors.white,
                activeIcon: Icon(
                  Icons.nightlight_round,
                  color: Colors.white,
                ),
                inactiveIcon: Icon(
                  Icons.wb_cloudy,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              SizedBox(height: 20.0),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: Colors.purple,
                inactiveToggleColor: Colors.white,
                activeSwitchBorder: Border.all(
                  color: Colors.green,
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Colors.deepPurple,
                  width: 6.0,
                ),
                activeColor: Colors.greenAccent,
                inactiveColor: Colors.blueAccent,
                activeIcon: Image.asset(
                  "images/on.png",
                  fit: BoxFit.cover,
                ),
                inactiveIcon: Image.asset(
                  "images/off.png",
                  fit: BoxFit.cover,
                ),
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
