import 'package:ais_checklist/config/constant.dart';
import 'package:ais_checklist/config/palette.dart';
import 'package:ais_checklist/config/util.dart';
import 'package:flutter/material.dart';

class GenderSelect extends StatefulWidget {
  Gender selectedGender;
  ValueChanged<Gender> onChanged;

  GenderSelect();

  @override
  _GenderSelectState createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedGender = Gender.FEMALE;
                widget.onChanged(widget.selectedGender);
              });
            },
            child: Container(
              width: screenW(100, context),
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              color: widget.selectedGender == Gender.FEMALE
                  ? Palette.accentColor
                  : Colors.grey,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // Female
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedGender = Gender.FEMALE;
                widget.onChanged(widget.selectedGender);
              });
            },
            child: Container(
              width: screenW(100, context),
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              color: widget.selectedGender == Gender.FEMALE
                  ? Palette.accentColor
                  : Colors.grey,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
