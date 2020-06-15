import 'package:ais_checklist/config/palette.dart';
import 'package:ais_checklist/config/styles.dart';
import 'package:ais_checklist/config/util.dart';
import 'package:ais_checklist/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PersonalInformationScreen extends StatelessWidget {
  static final String routeName = "/personal_info";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checklist',
      home: Scaffold(
        appBar: CustomAppBar(),
        body: PersonalInformationForm(),
      ),
    );
  }

  Widget _buildDetails({String title, BuildContext context}) {
    return Container(
      //color: Colors.red[300],
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: title,
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalInformationForm extends StatefulWidget {
  @override
  _PersonalInformationFormState createState() => _PersonalInformationFormState();
}

class _PersonalInformationFormState extends State<PersonalInformationForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      
    );
  }
}

/***
 * Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: <Widget>[
              Container(
                height: screenH(5, context),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: screenH(15, context)),
              Text(
                'Personal Information',
                style: Style.headerTextStyle,
              ),
              SizedBox(height: screenH(15, context)),
              _buildDetails(title: 'First Name', context: context),
            ],
          ),
        ),
        */