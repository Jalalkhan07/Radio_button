

import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _themeIndex = 0;
  final List<ThemeData> _themes =[
    ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.orange,
    ),
    ThemeData(
      primarySwatch: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.deepPurple,
    ),
    ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
    ),
    ThemeData(
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _themes[_themeIndex],
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Radio Buttons',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                  value: 0,
                  groupValue: _themeIndex,
                  onChanged: _handleThemeChange,),
              RadioListTile(
                value: 1,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,),
              RadioListTile(
                value: 2,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,),
              RadioListTile(
                value: 3,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,),
            ],
          ),
        ),
      )
    );
  }
  void  _handleThemeChange(int? value){
    setState(() {
      _themeIndex = value!;
    });
  }
}
