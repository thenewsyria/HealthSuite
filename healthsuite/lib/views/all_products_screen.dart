import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthsuite/controller/all_products_controller.dart';
import 'package:healthsuite/utils.dart';
import 'package:provider/provider.dart';

class AllProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productController = Provider.of<ProductController>(context);
    productController.fetchProducts(); // Fetch the products
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      bottomNavigationBar: Container(
        child: Stack(
          children: [
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 1.82 * fem, 73.97 * fem, 0 * fem),
                    width: 20.98 * fem,
                    height: 13.29 * fem,
                    child: Image.asset(
                      'assets/myapp/images/home.png',
                      width: 20.98 * fem,
                      height: 13.29 * fem,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0.18 * fem, 73.97 * fem, 0 * fem),
                    width: 17.66 * fem,
                    height: 16.56 * fem,
                    child: Image.asset(
                      'assets/myapp/images/cart.png',
                      width: 17.66 * fem,
                      height: 16.56 * fem,
                    ),
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 73.97 * fem, 0 * fem),
                    width: 17.66 * fem,
                    height: 16.93 * fem,
                    child: Image.asset(
                      'assets/myapp/images/like.png',
                      width: 17.66 * fem,
                      height: 16.93 * fem,
                    ),
                  ),
                  label: 'Like',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: 15.46 * fem,
                    height: 16.93 * fem,
                    child: Image.asset(
                      'assets/myapp/images/user.png',
                      width: 15.46 * fem,
                      height: 16.93 * fem,
                    ),
                  ),
                  label: 'User',
                ),
              ],
            ),
            Positioned(
                top: 50,
                child: Container(
                  width: 134,
                  height: 5,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2 - 134 / 2,
                    bottom: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF2AB3C6),
                    borderRadius: BorderRadius.circular(100),
                  ),
                )),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child:
            Consumer<ProductController>(builder: (context, controller, child) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0.36 * fem, 22 * fem),
                        padding: EdgeInsets.fromLTRB(
                            40.5 * fem, 26.33 * fem, 13.98 * fem, 21 * fem),
                        width: 419.64 * fem,
                        height: 107 * fem,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/myapp/images/background-JTe.png',
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1.67 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0 * fem,
                                        0 * fem, 250.08 * fem, 0 * fem),
                                    child: Text(
                                      '9:41',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'SF Pro Text',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.3000000119 * fem,
                                        color: Color(0xff2ab3c6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0 * fem,
                                        0 * fem, 5.52 * fem, 1.67 * fem),
                                    width: 18.77 * fem,
                                    height: 10.67 * fem,
                                    child: Image.asset(
                                      'assets/myapp/images/cellular-connection-uji.png',
                                      width: 18.77 * fem,
                                      height: 10.67 * fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0 * fem,
                                        0 * fem, 9.54 * fem, 2.01 * fem),
                                    width: 16.93 * fem,
                                    height: 11 * fem,
                                    child: Image.asset(
                                      'assets/myapp/images/wifi.png',
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
                                      'assets/myapp/images/battery-neQ.png',
                                      width: 24.33 * fem,
                                      height: 11.33 * fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 26.16 * fem, 0 * fem),
                              child: Text(
                                'All Products',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 28 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625 * ffem / fem,
                                  letterSpacing: 0.3600000143 * fem,
                                  color: Color(0xff08293b),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                          children: List.generate(
                        productController.products.length,
                        (index) {
                          final product = productController.products[index];
                          return Container(
                            margin: EdgeInsets.fromLTRB(
                                26 * fem, 0 * fem, 26 * fem, 22 * fem),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 20 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // margin: EdgeInsets.fromLTRB(
                                  //     26 * fem, 0 * fem, 26 * fem, 22 * fem),
                                  // padding: EdgeInsets.fromLTRB(
                                  //     0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 17.92 * fem),
                                        padding: EdgeInsets.fromLTRB(
                                            10.81 * fem,
                                            174 * fem,
                                            20.92 * fem,
                                            10.08 * fem),
                                        width: double.infinity,
                                        height: 216.08 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0xffd8d8d8),
                                          borderRadius:
                                              BorderRadius.circular(10 * fem),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/myapp/images/auto-group-pboa.png',
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  109.19 * fem,
                                                  0 * fem),
                                              child: Text(
                                                '00000 AED',
                                                style: SafeGoogleFont(
                                                  'Open Sans',
                                                  fontSize: 22 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.4545454545 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  7 * fem,
                                                  0 * fem,
                                                  6.27 * fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        3.68 * fem,
                                                        0 * fem),
                                                    width: 18.59 * fem,
                                                    height: 18.73 * fem,
                                                    child: Image.asset(
                                                      'assets/myapp/images/vector-NfW.png',
                                                      width: 18.59 * fem,
                                                      height: 18.73 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        3.82 * fem,
                                                        0 * fem),
                                                    width: 18.59 * fem,
                                                    height: 18.73 * fem,
                                                    child: Image.asset(
                                                      'assets/myapp/images/vector-swS.png',
                                                      width: 18.59 * fem,
                                                      height: 18.73 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        3.82 * fem,
                                                        0 * fem),
                                                    width: 18.59 * fem,
                                                    height: 18.73 * fem,
                                                    child: Image.asset(
                                                      'assets/myapp/images/vector-dGQ.png',
                                                      width: 18.59 * fem,
                                                      height: 18.73 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        3.82 * fem,
                                                        0 * fem),
                                                    width: 18.59 * fem,
                                                    height: 18.73 * fem,
                                                    child: Image.asset(
                                                      'assets/myapp/images/vector-pxk.png',
                                                      width: 18.59 * fem,
                                                      height: 18.73 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    // vectorMW4 (3:329)
                                                    width: 18.59 * fem,
                                                    height: 18.73 * fem,
                                                    child: Image.asset(
                                                      'assets/myapp/images/vector-8sN.png',
                                                      width: 18.59 * fem,
                                                      height: 18.73 * fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  3 * fem),
                                              child: Text(
                                                'product name',
                                                style: SafeGoogleFont(
                                                  'Open Sans',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height:
                                                      1.5714285714 * ffem / fem,
                                                  letterSpacing:
                                                      0.174999997 * fem,
                                                  fontStyle: FontStyle.italic,
                                                  color: Color(0xff444a51),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 348 * fem,
                                              ),
                                              child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                                                style: SafeGoogleFont(
                                                  'Open Sans',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5 * ffem / fem,
                                                  letterSpacing:
                                                      0.174999997 * fem,
                                                  color: Color(0xff08293b),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  // margin: EdgeInsets.fromLTRB(
                                  //     26 * fem, 0 * fem, 26 * fem, 21 * fem),
                                  width: double.infinity,
                                  height: 1 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffd8d8d8),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              59.62 * fem, 13.4 * fem, 55.72 * fem, 13.4 * fem),
                          width: 414 * fem,
                          height: 99 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x0c000000)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(22 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1.82 * fem, 73.97 * fem, 0 * fem),
                                width: 20.98 * fem,
                                height: 13.29 * fem,
                                child: Image.asset(
                                  'assets/myapp/images/home.png',
                                  width: 20.98 * fem,
                                  height: 13.29 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.18 * fem, 73.97 * fem, 0 * fem),
                                width: 17.66 * fem,
                                height: 16.56 * fem,
                                child: Image.asset(
                                  'assets/myapp/images/cart.png',
                                  width: 17.66 * fem,
                                  height: 16.56 * fem,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 73.97 * fem, 0 * fem),
                                width: 17.66 * fem,
                                height: 16.93 * fem,
                                child: Image.asset(
                                  'assets/myapp/images/like.png',
                                  width: 17.66 * fem,
                                  height: 16.93 * fem,
                                ),
                              ),
                              Container(
                                width: 15.46 * fem,
                                height: 16.93 * fem,
                                child: Image.asset(
                                  'assets/myapp/images/user.png',
                                  width: 15.46 * fem,
                                  height: 16.93 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 25,
                        child: Align(
                          child: SizedBox(
                            width: 134 * fem,
                            height: 5 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100 * fem),
                                color: Color(0xff2ab3c6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
