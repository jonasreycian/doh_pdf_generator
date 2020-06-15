import 'package:ais_checklist/config/palette.dart';
import 'package:ais_checklist/config/styles.dart';
import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  GlobalKey<FormState> fkey;
  ProceedButton(GlobalKey<FormState> key) {
    this.fkey = key;
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Palette.accentColor,
      textColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
        ),
        width: MediaQuery.of(context).size.width * 0.5,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        alignment: Alignment.center,
        child: Text(
          'Proceed',
          style: Style.buttonTextStyle,
        ),
      ),
      onPressed: () => {
        if (fkey.currentState.validate())
          {Navigator.popAndPushNamed(context, '/contac')}
      },
    );
  }
}
