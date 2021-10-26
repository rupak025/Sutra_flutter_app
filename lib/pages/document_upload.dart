import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
import 'dart:ui' as ui;
import 'package:flutter_login_ui/pages/custom_dialog_box.dart';
import 'profile_page.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import 'profile_page.dart';
import 'package:path/path.dart';

class DocumentUpload extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<DocumentUpload> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  final double _borderRadius = 24;

  get file => null;
  TextEditingController _wetWeight = TextEditingController();
  TextEditingController _dryWeight = TextEditingController();
  TextEditingController _result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'No File Selected';
    Future selectFile() async {
      final result = await FilePicker.platform.pickFiles(allowMultiple: false);

      if (result == null) return;
      final path = result.files.single.path!;
      File file;
      setState(() => file = File(path));
    }

    // void setState(File Function() param0) {}
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
                  Text('Step 3'),
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
              height: 180,
              child: HeaderWidget(180, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  // Container(
                  //   child: Stack(children: <Widget>[
                  //     Container(
                  //       height: 50,
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(16),
                  //           border: Border.all(
                  //             color: Colors.red,
                  //             width: 2,
                  //           ),
                  //           boxShadow: [
                  //             BoxShadow(
                  //                 color: Colors.red,
                  //                 blurRadius: 12,
                  //                 offset: Offset(0, 6))
                  //           ]),
                  //     ),
                  //     Positioned.fill(
                  //         child: Row(
                  //       children: <Widget>[
                  //         Expanded(
                  //             child: Column(
                  //                 mainAxisSize: MainAxisSize.min,
                  //                 crossAxisAlignment: CrossAxisAlignment.center,
                  //                 children: <Widget>[
                  //               Text(
                  //                 'Upload Document',
                  //                 style: TextStyle(
                  //                     color: Colors.red,
                  //                     fontWeight: FontWeight.w900,
                  //                     fontSize: 19),
                  //               ),
                  //             ])),
                  //       ],
                  //     ))
                  //   ]),
                  // ),
                  SizedBox(
                    height: 110,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [Colors.pink, Colors.red],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: CustomPaint(
                            size: Size(100, 150),
                            painter: CustomCardShapePainter(
                                _borderRadius, Colors.pink, Colors.red),
                          ),
                        ),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Khasra Plot\nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.amberAccent,
                                  Colors.amber.shade800
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.amber.shade800,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(_borderRadius,
                                  Colors.amberAccent, Colors.amber.shade800),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Southwest Plot \nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [Colors.cyanAccent, Colors.lightBlue],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.lightBlue,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(_borderRadius,
                                  Colors.cyanAccent, Colors.lightBlue),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Mark Plot\nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [Colors.green, Colors.greenAccent],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.greenAccent,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(_borderRadius,
                                  Colors.green, Colors.greenAccent),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Cut Plot \nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [Colors.purpleAccent, Colors.purple],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.purpleAccent,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(_borderRadius,
                                  Colors.purpleAccent, Colors.purple),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Cut Crop \nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.pink.shade400,
                                  Colors.pinkAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.pink.shade400,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(_borderRadius,
                                  Colors.pink.shade400, Colors.pinkAccent),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Wet Weight \nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.deepOrange,
                                  Colors.deepOrangeAccent.shade400
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.deepOrange,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(
                                  _borderRadius,
                                  Colors.deepOrange,
                                  Colors.deepOrangeAccent.shade400),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Dry weight \nImage',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellowAccent,
                                  Colors.yellow.shade800
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.yellow.shade800,
                                    blurRadius: 12,
                                    offset: Offset(0, 5))
                              ]),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(_borderRadius,
                                  Colors.amberAccent, Colors.amber.shade800),
                            )),
                        Positioned.fill(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.asset('images/Upload.png',
                                  height: 64, width: 64),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Video',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                              flex: 4,
                            ),
                          ],
                        ))
                      ]),
                    ),
                    onTap: selectFile,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: TextFormField(
                      controller: _wetWeight,
                      decoration: ThemeHelper().textInputDecoration(
                          'Wet Weight/KG', 'Enter the Wet Weight/KG'),
                      // onChanged: (value) {
                      //   // _cal();
                      // },
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: TextFormField(
                      controller: _dryWeight,
                      decoration: ThemeHelper().textInputDecoration(
                          'Dry Weight', 'Enter the Dry Weight'),
                      // onChanged: (value) {
                      //   double firstValue = double.parse(_wetWeight.text);
                      //   _result.text = (firstValue - (8/100)).toString();
                      // },
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // AbsorbPointer(
                  //   child: TextFormField(
                  //     controller: _result,
                  //     decoration: ThemeHelper().textInputDecoration(
                  //         'output', 'o/p'),
                  //   ),
                  //   // decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  // ),

                  SizedBox(height: 20.0),
                  Container(
                    decoration: ThemeHelper().buttonBoxDecoration(context),
                    child: ElevatedButton(
                      style: ThemeHelper().buttonStyle(),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          "Upload".toUpperCase(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialogBox(
                                title: "Uploaded",
                                descriptions:
                                    "All Document Uploaded Sucessfully",
                                text: "Back to Form",
                                img: Image.asset("images/Check.png"),
                              );
                            });
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //         builder: (context) => ProfilePage()),
                        //     (Route<dynamic> route) => false);
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
    );
  }
  // void _cal() {
  //
  //     final firstValue = double.parse(_wetWeight.text);
  //     final secondValue = double.parse(_dryWeight.text);
  //     _result.text = (firstValue - (8/100)).toString();
  //     // _result.text = (secondValue * (-8/100)).toString();
  //
  // }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;
  CustomCardShapePainter(this.radius, this.startColor, this.endColor);
  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;
    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);
    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
