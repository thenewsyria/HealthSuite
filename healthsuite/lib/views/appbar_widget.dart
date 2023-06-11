import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 89.66 * fem),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, 262.08 * fem, 0 * fem),
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
            margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5.52 * fem, 1.67 * fem),
            width: 18.77 * fem,
            height: 10.67 * fem,
            child: Image.asset(
              'assets/myapp/images/cellular-connection-3b2.png',
              width: 18.77 * fem,
              height: 10.67 * fem,
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9.54 * fem, 2.01 * fem),
            width: 16.93 * fem,
            height: 11 * fem,
            child: Image.asset(
              'assets/myapp/images/wifi-MjS.png',
              width: 16.93 * fem,
              height: 11 * fem,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1.67 * fem),
            width: 24.33 * fem,
            height: 11.33 * fem,
            child: Image.asset(
              'assets/myapp/images/battery-cwE.png',
              width: 24.33 * fem,
              height: 11.33 * fem,
            ),
          ),
        ],
      ),
    );
  }
}
