import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/registration_page2.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  String? valueChoose;
  String? valueChoose2;
  String? valueChoose3;
  List listState = [
    "Delhi",
    "Uttar pardesh",
    "Bihar",
    "Punjab",
    "Haryana",
  ];
  List listDistrict = [
    "Noida",
    "District1",
    "District2",
    "District3",
    "District4",
  ];
  List listBlock = [
    "Block1",
    "Block2",
    "Block3",
    "Block4",
    "Block5",
  ];

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
                  Text('Step 1'),
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
                        // Text(
                        //   'Registration',
                        //   style: TextStyle(
                        //     fontSize: 40,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white,
                        //   ),
                        // ),
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
                        //     ],
                        //   ),
                        // ),

                        SizedBox(
                          height: 110,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'State', 'Enter your State'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        // Container(
                        //   child: Container(
                        //     padding: EdgeInsets.only(left: 16, right: 16),
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: HexColor('#FF416C'), width: 1),
                        //         borderRadius: BorderRadius.circular(50),
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.black.withOpacity(0.1),
                        //             blurRadius: 20,
                        //             offset: const Offset(0, 5),
                        //           )
                        //         ]),
                        //     child: DropdownButton(
                        //       hint: Text("State"),
                        //       dropdownColor: Colors.white,
                        //       icon: Icon(Icons.arrow_drop_down),
                        //       iconSize: 36,
                        //       isExpanded: true,
                        //       underline: SizedBox(),
                        //       style: TextStyle(
                        //           color: Colors.grey.shade700, fontSize: 16),
                        //       value: valueChoose,
                        //       onChanged: (val) {
                        //         setState(() {
                        //           valueChoose = val as String?;
                        //         });
                        //       },
                        //       items: listState.map((valueItem) {
                        //         return DropdownMenuItem(
                        //           value: valueItem,
                        //           child: Text(valueItem),
                        //         );
                        //       }).toList(),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'District', 'Enter your District'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        // Container(
                        //   child: Container(
                        //     padding: EdgeInsets.only(left: 16, right: 16),
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: HexColor('#FF416C'), width: 1),
                        //         borderRadius: BorderRadius.circular(50),
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.black.withOpacity(0.1),
                        //             blurRadius: 20,
                        //             offset: const Offset(0, 5),
                        //           )
                        //         ]),
                        //     child: DropdownButton(
                        //       hint: Text("District"),
                        //       dropdownColor: Colors.white,
                        //       icon: Icon(Icons.arrow_drop_down),
                        //       iconSize: 36,
                        //       isExpanded: true,
                        //       underline: SizedBox(),
                        //       style: TextStyle(
                        //           color: Colors.grey.shade700, fontSize: 16),
                        //       value: valueChoose2,
                        //       onChanged: (val) {
                        //         setState(() {
                        //           valueChoose2 = val as String?;
                        //         });
                        //       },
                        //       items: listDistrict.map((valueItem) {
                        //         return DropdownMenuItem(
                        //           value: valueItem,
                        //           child: Text(valueItem),
                        //         );
                        //       }).toList(),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Block/Tehsil', 'Enter your Block/Tehsil'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        // Container(
                        //   child: Container(
                        //     padding: EdgeInsets.only(left: 16, right: 16),
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: HexColor('#FF416C'), width: 1),
                        //         borderRadius: BorderRadius.circular(50),
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.black.withOpacity(0.1),
                        //             blurRadius: 20,
                        //             offset: const Offset(0, 5),
                        //           )
                        //         ]),
                        //     child: DropdownButton(
                        //       hint: Text("Block/Tehsil"),
                        //       dropdownColor: Colors.white,
                        //       icon: Icon(Icons.arrow_drop_down),
                        //       iconSize: 36,
                        //       isExpanded: true,
                        //       underline: SizedBox(),
                        //       style: TextStyle(
                        //           color: Colors.grey.shade700, fontSize: 16),
                        //       value: valueChoose3,
                        //       onChanged: (val) {
                        //         setState(() {
                        //           valueChoose3 = val as String?;
                        //         });
                        //       },
                        //       items: listBlock.map((valueItem) {
                        //         return DropdownMenuItem(
                        //           value: valueItem,
                        //           child: Text(valueItem),
                        //         );
                        //       }).toList(),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Grampanchayat Name',
                                'Enter your Grampanchayat Name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Village', 'Enter your Village'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Random Number', 'Enter your Random Number'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Selected khasra No.', 'XXXXXXXXXXX'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Actual khasra No.', 'XXXXXXXXXXX'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Farmer Name', 'Enter your Farmer Name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
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
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Farmer Mobile Number",
                                "Enter your Farmer mobile number"),
                            keyboardType: TextInputType.phone,
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Enter a valid phone number'),
                              MinLengthValidator(10,
                                  errorText:
                                      'phone number must be at least 10 digits long'),
                            ]),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Govt. Officer Name',
                                'Enter your Govt. Officer Name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Govt. Officer number',
                                'Enter your Govt. Officer Number'),
                            keyboardType: TextInputType.phone,
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Enter a valid phone number'),
                              MinLengthValidator(10,
                                  errorText:
                                      'phone number must be at least 10 digits long'),
                            ]),
                            // validator: (val) {
                            //   if (!(val!.isEmpty) &&
                            //       !RegExp(r"^(\d+)*$").hasMatch(val)) {
                            //     return "Enter a valid phone number";
                            //   }
                            //   return null;
                            // },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Govt. Officer Designation',
                                'Enter your Govt. Officer Designation'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
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
                                        builder: (context) =>
                                            RegistrationPage2()),
                                    (Route<dynamic> route) => false);
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 30.0),
                        // Text(
                        //   "Or create account using social media",
                        //   style: TextStyle(color: Colors.grey),
                        // ),
                        // SizedBox(height: 25.0),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     GestureDetector(
                        //       child: FaIcon(
                        //         FontAwesomeIcons.googlePlus,
                        //         size: 35,
                        //         color: HexColor("#EC2D2F"),
                        //       ),
                        //       onTap: () {
                        //         setState(() {
                        //           showDialog(
                        //             context: context,
                        //             builder: (BuildContext context) {
                        //               return ThemeHelper().alartDialog(
                        //                   "Google Plus",
                        //                   "You tap on GooglePlus social icon.",
                        //                   context);
                        //             },
                        //           );
                        //         });
                        //       },
                        //     ),
                        //     SizedBox(
                        //       width: 30.0,
                        //     ),
                        //     GestureDetector(
                        //       child: Container(
                        //         padding: EdgeInsets.all(0),
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(100),
                        //           border: Border.all(
                        //               width: 5, color: HexColor("#40ABF0")),
                        //           color: HexColor("#40ABF0"),
                        //         ),
                        //         child: FaIcon(
                        //           FontAwesomeIcons.twitter,
                        //           size: 23,
                        //           color: HexColor("#FFFFFF"),
                        //         ),
                        //       ),
                        //       onTap: () {
                        //         setState(() {
                        //           showDialog(
                        //             context: context,
                        //             builder: (BuildContext context) {
                        //               return ThemeHelper().alartDialog(
                        //                   "Twitter",
                        //                   "You tap on Twitter social icon.",
                        //                   context);
                        //             },
                        //           );
                        //         });
                        //       },
                        //     ),
                        //     SizedBox(
                        //       width: 30.0,
                        //     ),
                        //     GestureDetector(
                        //       child: FaIcon(
                        //         FontAwesomeIcons.facebook,
                        //         size: 35,
                        //         color: HexColor("#3E529C"),
                        //       ),
                        //       onTap: () {
                        //         setState(() {
                        //           showDialog(
                        //             context: context,
                        //             builder: (BuildContext context) {
                        //               return ThemeHelper().alartDialog(
                        //                   "Facebook",
                        //                   "You tap on Facebook social icon.",
                        //                   context);
                        //             },
                        //           );
                        //         });
                        //       },
                        //     ),
                        //   ],
                        // ),
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
