import 'package:flutter/material.dart';
import 'package:smart_farm_app/utils/utils.dart';

class InformationLivestockScreen extends StatelessWidget {
  const InformationLivestockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // thngtinvtnuiQ1M (16:500)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupl8ekiXq (B8ULDBZSouo3zwWPbwL8EK)
              padding: EdgeInsets.fromLTRB(30*fem, 30*fem, 98.5*fem, 15*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // arrowleft2oR (91:343)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48.5*fem, 0*fem),
                    width: 25*fem,
                    height: 25*fem,
                    child: Image.asset(
                      'assets/images/arrowleft-K8B.png',
                      width: 25*fem,
                      height: 25*fem,
                    ),
                  ),
                  Container(
                    // thngtinvbsajhq (16:504)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    child: Text(
                      'THÔNG TIN VỀ BÒ SỮA',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 22*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.44*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // rectangle97pjH (35:465)
              width: double.infinity,
              height: 211*fem,
              decoration: const BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
            ),
            Container(
              // autogroupvgfqMz7 (B8ULHgRx8h1v3EZ1TKVgFq)
              padding: EdgeInsets.fromLTRB(4.5*fem, 29*fem, 4.5*fem, 278*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupjqjkV4j (B8UL5wGX7zGfP2GWHbjQJK)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 0*fem),
                    width: 102*fem,
                    height: 20*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // giithiu1Hy (35:466)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 102*fem,
                              height: 20*fem,
                              child: Text(
                                'GIỚI THIỆU',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1*ffem/fem,
                                  letterSpacing: -0.4*fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // giithiuUST (35:468)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 102*fem,
                              height: 20*fem,
                              child: Text(
                                'GIỚI THIỆU',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1*ffem/fem,
                                  letterSpacing: -0.4*fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 88*fem,
                  ),
                  SizedBox(
                    // nuigingXvX (35:467)
                    width: double.infinity,
                    child: Text(
                      'NUÔI GIỐNG',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.4*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 88*fem,
                  ),
                  SizedBox(
                    // nuitrngqwD (35:469)
                    width: double.infinity,
                    child: Text(
                      'NUÔI TRỒNG',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.4*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 88*fem,
                  ),
                  SizedBox(
                    // chmscYqd (35:490)
                    width: double.infinity,
                    child: Text(
                      'CHĂM SÓC',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.4*fem,
                        color: const Color(0xff000000),
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
  }
}