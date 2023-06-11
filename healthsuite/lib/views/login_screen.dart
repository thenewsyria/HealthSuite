import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:healthsuite/controller/login_controller.dart';
import 'package:healthsuite/views/appbar_widget.dart';
import 'dart:ui';
import 'package:healthsuite/utils.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Consumer<LoginController>(builder: (context, controller, child) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                      34.5 * fem, 14.33 * fem, 14.34 * fem, 28.5 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1, -0.002),
                      end: Alignment(1, -0.002),
                      colors: <Color>[Color(0xff188095), Color(0xff2ab3c6)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppBarWidget(),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 5.74 * fem, 99.29 * fem),
                        width: 240.5 * fem,
                        height: 117.22 * fem,
                        child: Image.asset(
                          'assets/myapp/images/frame.png',
                          width: 240.5 * fem,
                          height: 117.22 * fem,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 273.16 * fem, 0 * fem),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 34 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575 * ffem / fem,
                            letterSpacing: -0.3000000119 * fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      36 * fem, 54 * fem, 28 * fem, 109.5 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 24 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 32 * fem),
                              width: 342 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 342 * fem,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        TextFormField(
                                          controller: _usernameController,
                                          decoration: InputDecoration(
                                              labelText: 'Email',
                                              labelStyle: TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.6923076923,
                                                letterSpacing: -0.4079999924,
                                                color: Color(0xd8000000),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10, 0, 287.14, 3.92),
                                              suffixIcon: GestureDetector(
                                                  child: Icon(Icons
                                                      .check_circle_outline))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 342 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    controller: _passwordController,
                                    obscureText: !controller.isPasswordVisible,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.6923076923,
                                        letterSpacing: -0.4079999924,
                                        color: Color(0xd8000000),
                                      ),
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10, 0, 287.14, 3.92),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            controller.isPasswordVisible =
                                                !controller.isPasswordVisible;
                                          });
                                        },
                                        child: Icon(
                                          controller.isPasswordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 0.5 * fem,
                                    decoration: BoxDecoration(
                                      color: Color(0x5b3c3c43),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/allProduct'),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 42.5 * fem),
                          width: 342 * fem,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff2ab3c6),
                            borderRadius: BorderRadius.circular(62 * fem),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Continue',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 17 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 0.1470588235 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 0 * fem),
                          child: Text(
                            'NEED HELP?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2575 * ffem / fem,
                              letterSpacing: -0.4079999924 * fem,
                              color: Color(0xa5000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
