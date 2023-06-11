import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthsuite/controller/all_products_controller.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Consumer<ProductController>(builder: (context, controller, child) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 896 * fem,
            decoration: BoxDecoration(
              color: Color(0xfff7f8fa),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    width: 430 * fem,
                    height: 674 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 410.71 * fem,
                              height: 674 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff979797)),
                                  color: Color(0xffd8d8d8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 430 * fem,
                              height: 674 * fem,
                              child: Image.asset(
                                'assets/myapp/images/auto-group-9xoj.png',
                                width: 430 * fem,
                                height: 674 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 22 * fem,
                          top: 482 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 149 * fem,
                              height: 35 * fem,
                              child: Text(
                                '0000 AED',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 32 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.09375 * ffem / fem,
                                  letterSpacing: 0.400000006 * fem,
                                  color: Color(0xff2a3f4b),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14 * fem,
                          top: 102 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 86 * fem,
                              height: 39 * fem,
                              child: Text(
                                'Detail',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 28 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625 * ffem / fem,
                                  letterSpacing: 0.3600000143 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14 * fem,
                          top: 49 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 386 * fem,
                              height: 40 * fem,
                              child: Image.asset(
                                'assets/myapp/images/header.png',
                                width: 386 * fem,
                                height: 40 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.5 * fem,
                          top: 14.3333129883 * fem,
                          child: Container(
                            width: 365.16 * fem,
                            height: 19 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 260.08 * fem, 0 * fem),
                                  child: Text(
                                    '9:41',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575 * ffem / fem,
                                      letterSpacing: -0.3000000119 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 5.52 * fem, 1.67 * fem),
                                  width: 18.77 * fem,
                                  height: 10.67 * fem,
                                  child: Image.asset(
                                    'assets/myapp/images/cellular-connection.png',
                                    width: 18.77 * fem,
                                    height: 10.67 * fem,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 9.54 * fem, 2.01 * fem),
                                  width: 16.93 * fem,
                                  height: 11 * fem,
                                  child: Image.asset(
                                    'assets/myapp/images/wifi-mCG.png',
                                    width: 16.93 * fem,
                                    height: 11 * fem,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 1.67 * fem),
                                  width: 24.33 * fem,
                                  height: 11.33 * fem,
                                  child: Image.asset(
                                    'assets/myapp/images/battery.png',
                                    width: 24.33 * fem,
                                    height: 11.33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0 * fem,
                  top: 520 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 15 * fem, 22.26 * fem, 392.76 * fem),
                    width: 419.64 * fem,
                    height: 752.76 * fem,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/myapp/images/background.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0.05 * fem, 0 * fem, 0 * fem, 22.43 * fem),
                          width: 13.43 * fem,
                          height: 6.57 * fem,
                          child: Image.asset(
                            'assets/myapp/images/less-details-button.png',
                            width: 13.43 * fem,
                            height: 6.57 * fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0.38 * fem, 0 * fem, 0.12 * fem, 24.48 * fem),
                          width: double.infinity,
                          height: 54.76 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 39.17 * fem, 0 * fem),
                                width: 55.95 * fem,
                                height: 54.76 * fem,
                                child: Image.asset(
                                  'assets/myapp/images/share-button-bDE.png',
                                  width: 55.95 * fem,
                                  height: 54.76 * fem,
                                ),
                              ),
                              Container(
                                width: 279.76 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff2ab3c6),
                                  borderRadius: BorderRadius.circular(43 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Order Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.6666666667 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0.38 * fem, 0 * fem, 0 * fem, 4.76 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.3625 * ffem / fem,
                                    letterSpacing: 0.5 * fem,
                                    fontStyle: FontStyle.italic,
                                    color: Color(0xff444a51),
                                  ),
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 375 * fem,
                                ),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5714285714 * ffem / fem,
                                    letterSpacing: 0.174999997 * fem,
                                    color: Color(0xff828395),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2.38 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              4 * fem, 5.24 * fem, 4 * fem, 18 * fem),
                          width: 373 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 9.76 * fem),
                                child: Text(
                                  'Reviews (100)',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625 * ffem / fem,
                                    letterSpacing: 0.5 * fem,
                                    color: Color(0xff444a51),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    17 * fem, 0 * fem, 98.53 * fem, 0 * fem),
                                width: double.infinity,
                                height: 44 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 35 * fem, 0 * fem),
                                      child: Text(
                                        '4.33',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 32 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          letterSpacing: 0.5 * fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          7 * fem, 0 * fem, 11.27 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 5.06 * fem, 0 * fem),
                                            width: 25.53 * fem,
                                            height: 25.73 * fem,
                                            child: Image.asset(
                                              'assets/myapp/images/vector-6gC.png',
                                              width: 25.53 * fem,
                                              height: 25.73 * fem,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 5.25 * fem, 0 * fem),
                                            width: 25.53 * fem,
                                            height: 25.73 * fem,
                                            child: Image.asset(
                                              'assets/myapp/images/vector.png',
                                              width: 25.53 * fem,
                                              height: 25.73 * fem,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 5.25 * fem, 0 * fem),
                                            width: 25.53 * fem,
                                            height: 25.73 * fem,
                                            child: Image.asset(
                                              'assets/myapp/images/vector-qn4.png',
                                              width: 25.53 * fem,
                                              height: 25.73 * fem,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 5.25 * fem, 0 * fem),
                                            width: 25.53 * fem,
                                            height: 25.73 * fem,
                                            child: Image.asset(
                                              'assets/myapp/images/vector-XDN.png',
                                              width: 25.53 * fem,
                                              height: 25.73 * fem,
                                            ),
                                          ),
                                          Container(
                                            width: 25.53 * fem,
                                            height: 25.73 * fem,
                                            child: Image.asset(
                                              'assets/myapp/images/vector-m7i.png',
                                              width: 25.53 * fem,
                                              height: 25.73 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
