// import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
import 'dart:ui' as ui;
// import 'package:flutter_login_ui/pages/custom_dialog_box.dart';
// import 'profile_page.dart';
// import 'package:flutter_login_ui/pages/profile_page.dart';
import 'package:flutter_login_ui/pages/registration_page.dart';
import 'package:flutter_login_ui/pages/crop_registration.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:hexcolor/hexcolor.dart';

// import 'profile_page.dart';
// import 'package:path/path.dart';

class OptionMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<OptionMenu> {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // bool checkedValue = false;
  // bool checkboxValue = false;
  final double _borderRadius = 24;
  //
  // get file => null;

  @override
  Widget build(BuildContext context) {
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
        // actions: [
        //   Container(
        //     margin: EdgeInsets.only(
        //       top: 16,
        //       right: 16,
        //     ),
        //     child: Stack(
        //       children: <Widget>[
        //         Text(''),
        //         Positioned(
        //           right: 0,
        //           child: Container(
        //             padding: EdgeInsets.all(1),
        //             decoration: BoxDecoration(
        //               color: Colors.red,
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   )
        // ]
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 180,
              child: HeaderWidget(180, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 50, 15, 10),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
              child: Center(
                child: Row(
                  children: [

                    SizedBox(
                      height: 510,
                    ),
                    InkWell(
                      child: Container(
                        child: Stack(children: <Widget>[
                          Container(
                            height: 150,
                            width: 180,
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
                          // Positioned(
                          //   right: 0,
                          //   bottom: 0,
                          //   top: 0,
                          //   child: CustomPaint(
                          //     size: Size(100, 150),
                          //     painter: CustomCardShapePainter(
                          //         _borderRadius, Colors.pink, Colors.red),
                          //   ),
                          // ),
                          Positioned.fill(
                              child: Column(
                            children: <Widget>[
                              Expanded(
                                flex:2,
                                child: Image.asset('images/Crop.png',
                                    height: 74, width: 74),
                                // flex: 2,
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Crop Cutting \n Experiment',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 18),
                                      ),

                                    ]),
                                // flex: 4,
                              ),
                            ],
                          ))
                        ]),
                      ),
                      onTap: () {

                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CropRegistration()),
                                  (Route<dynamic> route) => false);
                        }
                      ,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Container(
                        child: Stack(children: <Widget>[
                          Container(
                            height: 150,
                            width: 180,
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
                          // Positioned(
                          //     right: 0,
                          //     bottom: 0,
                          //     top: 0,
                          //     child: CustomPaint(
                          //       size: Size(100, 150),
                          //       painter: CustomCardShapePainter(_borderRadius,
                          //           Colors.amberAccent, Colors.amber.shade800),
                          //     )),
                          Positioned.fill(
                              child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Image.asset('images/Survey.png',
                                    height: 64, width: 64),
                                // flex: 2,
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'Loss Assessment \n Survey',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18),
                                        ),
                                      ),

                                    ]),
                                // flex: 4,
                              ),
                            ],
                          ))
                        ]),
                      ),
                      onTap: () {

                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegistrationPage()),
                                (Route<dynamic> route) => false);
                      },
                    ),
                  ],
                ),

              ),

            ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 50, 15, 10),
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
          child: Center(
            child: Row(
              children: [

                SizedBox(
                  height: 900,
                ),
                InkWell(
                  child: Container(
                    child: Stack(children: <Widget>[
                      Container(
                        height: 150,
                        width: 180,
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
                                  color: Colors.purple,
                                  blurRadius: 12,
                                  offset: Offset(0, 5))
                            ]),
                      ),
                      // Positioned(
                      //   right: 0,
                      //   bottom: 0,
                      //   top: 0,
                      //   child: CustomPaint(
                      //     size: Size(100, 150),
                      //     painter: CustomCardShapePainter(
                      //         _borderRadius, Colors.pink, Colors.red),
                      //   ),
                      // ),
                      Positioned.fill(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex:2,
                                child: Image.asset('images/User.png',
                                    height: 74, width: 74),
                                // flex: 2,
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Existing Users',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 18),
                                      ),

                                    ]),
                                // flex: 4,
                              ),
                            ],
                          ))
                    ]),
                  ),
                  onTap: () {

                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                CropRegistration()),
                            (Route<dynamic> route) => false);
                  }
                  ,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),

          ),
        ),
          ],
        ),
      ),
    );
  }
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
