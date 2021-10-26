import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
import 'package:flutter_login_ui/pages/survey_doc.dart';
import 'package:form_field_validator/form_field_validator.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import 'profile_page.dart';

class RegistrationPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage2> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  String? valueChoose;
  String? valueChoose2;
  String? valueChoose3;

  List listBank = [
    "SBI",
    "Block2",
    "Block3",
    "Block4",
    "Block5",
  ];
  String title = 'DatePicker';
  DateTime _date = DateTime.now();
  DateTime _date2 = DateTime.now();
  DateTime _date3 = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2050),
      // builder: (BuildContext context, Widget? child) {
      //   return Theme(data: ThemeData(
      //     primaryColor: Colors.red,
      //     accentColor: Colors.red,
      //   ),child:chilld)
      // }
    );
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  Future<Null> _selectDate2(BuildContext context2) async {
    DateTime? _datePicker2 = await showDatePicker(
      context: context2,
      initialDate: _date2,
      firstDate: DateTime(1947),
      lastDate: DateTime(2050),
    );
    if (_datePicker2 != null && _datePicker2 != _date2) {
      setState(() {
        _date2 = _datePicker2;
        print(
          _date2.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Sutra",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ])),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                top: 16,
                right: 16,
              ),
              child: Stack(
                children: <Widget>[
                  Text('Step 2'),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // GestureDetector(
                        //   child: Stack(
                        //     children: [
                        // Container(
                        //   padding: EdgeInsets.all(10),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(100),
                        //     border: Border.all(
                        //         width: 5, color: Colors.white),
                        //     color: Colors.white,
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.black12,
                        //         blurRadius: 20,
                        //         offset: const Offset(5, 5),
                        //       ),
                        //     ],
                        //   ),
                        //   child: Icon(
                        //     Icons.person,
                        //     color: Colors.grey.shade300,
                        //     size: 80.0,
                        //   ),
                        // ),
                        // Container(
                        //   padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                        //   child: Icon(
                        //     Icons.add_circle,
                        //     color: Colors.grey.shade700,
                        //     size: 25.0,
                        //   ),
                        // ),
                        //     ],
                        //   ),
                        // ),

                        SizedBox(
                          height: 110,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Account Holder name',
                                'Enter your Account Holder name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'KCC Account Number',
                                'Enter your KCC Account Number'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'IFSC Code', 'Enter your IFSC Code'),
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a IFSC Code'),
                            ]),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Container(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: HexColor('#FF416C'), width: 1),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 20,
                                    offset: const Offset(0, 5),
                                  )
                                ]),
                            child: DropdownButton(
                              hint: Text("Bank Name"),
                              dropdownColor: Colors.white,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 36,
                              isExpanded: true,
                              underline: SizedBox(),
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 16),
                              value: valueChoose3,
                              onChanged: (val) {
                                setState(() {
                                  valueChoose3 = val as String?;
                                });
                              },
                              items: listBank.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Branch Name', 'Enter your Branch Name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Insured Khasra Number',
                                'Enter your Insured Khasra Number'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Date of Loss',
                                // _date2.year.toString() +
                                //     '-' +
                                //     _date2.month.toString() +
                                //     '-' +
                                //     _date2.day.toString()
                                'DD/MM/YYYY'),
                            cursorColor: Colors.red,
                            readOnly: true,
                            // onTap: () {
                            //   setState(() {
                            //     _selectDate2(context);
                            //   });
                            // }
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        // Container(
                        //   child: TextFormField(
                        //       decoration: ThemeHelper().textInputDecoration(
                        //           'Date of Loss',
                        //           _date.year.toString() +
                        //               '-' +
                        //               _date.month.toString() +
                        //               '-' +
                        //               _date.day.toString()),
                        //       cursorColor: Colors.red,
                        //       readOnly: true,
                        //       onTap: () {
                        //         setState(() {
                        //           _selectDate(context);
                        //         });
                        //       }),
                        //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        // ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Date of Intimation',
                                // _date2.year.toString() +
                                //     '-' +
                                //     _date2.month.toString() +
                                //     '-' +
                                //     _date2.day.toString()
                                'DD/MM/YYYY'),
                            cursorColor: Colors.red,
                            readOnly: true,
                            // onTap: () {
                            //   setState(() {
                            //     _selectDate2(context);
                            //   });
                            // }
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Date of Survey',
                                // _date2.year.toString() +
                                //     '-' +
                                //     _date2.month.toString() +
                                //     '-' +
                                //     _date2.day.toString()
                                'DD/MM/YYYY'),
                            cursorColor: Colors.red,
                            readOnly: true,
                            // onTap: () {
                            //   setState(() {
                            //     _selectDate2(context);
                            //   });
                            // }
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        // Container(
                        //   child: TextFormField(
                        //       decoration: ThemeHelper().textInputDecoration(
                        //           'Date of Survey',
                        //           _date3.year.toString() +
                        //               '-' +
                        //               _date3.month.toString() +
                        //               '-' +
                        //               _date3.day.toString()),
                        //       cursorColor: Colors.red,
                        //       readOnly: true,
                        //       onTap: () {
                        //         setState(() {
                        //           _selectDate(context);
                        //         });
                        //       }),
                        //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        // ),
                        // SizedBox(height: 20.0),

                        // Container(
                        //   child: TextFormField(
                        //     decoration: ThemeHelper().textInputDecoration(
                        //         "E-mail address", "Enter your email"),
                        //     keyboardType: TextInputType.emailAddress,
                        //     validator: (val) {
                        //       if (!(val!.isEmpty) &&
                        //           !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                        //               .hasMatch(val)) {
                        //         return "Enter a valid email address";
                        //       }
                        //       return null;
                        //     },
                        //   ),
                        //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        // ),
                        // SizedBox(height: 20.0),
                        // Container(
                        //   child: TextFormField(
                        //     obscureText: true,
                        //     decoration: ThemeHelper().textInputDecoration(
                        //         "Password*", "Enter your password"),
                        //     validator: (val) {
                        //       if (val!.isEmpty) {
                        //         return "Please enter your password";
                        //       }
                        //       return null;
                        //     },
                        //   ),
                        //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        // ),
                        // SizedBox(height: 15.0),
                        // FormField<bool>(
                        //   builder: (state) {
                        //     return Column(
                        //       children: <Widget>[
                        //         // Row(
                        //         //   children: <Widget>[
                        //         //     Checkbox(
                        //         //         value: checkboxValue,
                        //         //         onChanged: (value) {
                        //         //           setState(() {
                        //         //             checkboxValue = value!;
                        //         //             state.didChange(value);
                        //         //           });
                        //         //         }),
                        //         //     Text(
                        //         //       "I accept all terms and conditions.",
                        //         //       style: TextStyle(color: Colors.grey),
                        //         //     ),
                        //         //   ],
                        //         // ),
                        //         Container(
                        //           alignment: Alignment.centerLeft,
                        //           child: Text(
                        //             state.errorText ?? '',
                        //             textAlign: TextAlign.left,
                        //             style: TextStyle(
                        //               color: Theme.of(context).errorColor,
                        //               fontSize: 12,
                        //             ),
                        //           ),
                        //         )
                        //       ],
                        //     );
                        //   },
                        //   validator: (value) {
                        //     if (!checkboxValue) {
                        //       return 'You need to accept terms and conditions';
                        //     } else {
                        //       return null;
                        //     }
                        //   },
                        // ),
                        SizedBox(height: 20.0),
                        Container(
                          decoration:
                              ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "Next".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => SurveyDoc()),
                                    (Route<dynamic> route) => false);
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 30.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
