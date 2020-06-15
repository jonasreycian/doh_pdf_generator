import 'package:ais_checklist/config/palette.dart';
import 'package:ais_checklist/config/styles.dart';
import 'package:ais_checklist/config/util.dart';
import 'package:ais_checklist/widgets/custom_app_bar.dart';
import 'package:ais_checklist/widgets/gender_selector.dart';
import 'package:ais_checklist/widgets/proceed_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gender_selector/gender_selector.dart';

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
}

class PersonalInformationForm extends StatefulWidget {
  @override
  _PersonalInformationFormState createState() =>
      _PersonalInformationFormState();
}

class _PersonalInformationFormState extends State<PersonalInformationForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final formKey = GlobalKey<FormState>();
  final _gender = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  _buildDetails(
                      title: 'First Name',
                      context: context,
                      inputType: TextInputType.text),
                  _buildDetails(
                      title: 'Middle Name',
                      context: context,
                      inputType: TextInputType.text),
                  _buildDetails(
                      title: 'Last Name',
                      context: context,
                      inputType: TextInputType.text),
                  _buildDetails(
                      title: 'Age',
                      context: context,
                      inputType: TextInputType.number),
                  GenderSelect(),
                ],
              ),
              ProceedButton(formKey),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenderDetails() {
    Gender _selectedGender;
    ValueChanged<Gender> onChanged;

    return Row(
      children: <Widget>[
        // Male
        GestureDetector(
          onTap: () {},
          child: Container(

          ),
        ),
      ],
    );
  }

  Widget _buildDetails(
      {String title, BuildContext context, TextInputType inputType}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: Style.labelTextStyle),
          SizedBox(
            height: 5,
          ),
          TextField(
            keyboardType: inputType,
            obscureText: false,
            style: Style.labelTextStyle,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: title,
            ),
          ),
        ],
      ),
    );
  }
}
