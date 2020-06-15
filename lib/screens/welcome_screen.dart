import 'package:ais_checklist/config/checklist_asset_constant.dart';
import 'package:ais_checklist/config/palette.dart';
import 'package:ais_checklist/config/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/asi_logo_light.png',
                      color: Colors.white,
                    ),
                    SizedBox(height: screenH(30, context)),
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Health and Safety',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Checklist',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                color: Palette.accentColor,
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),                  
                ),
                onPressed: () => Navigator.pushNamed(context, '/personal_info'),
                child: Text(
                  'Start',
                  style: TextStyle(
                    // Not sure how to get rid of color: Colors.white here
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
