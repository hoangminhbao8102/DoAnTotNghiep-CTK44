import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/register.dart';
import 'package:smart_farm_app/pages/home_page.dart';

import 'package:smart_farm_app/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // ngnhp6Ss (1:393)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // ngnhpBz7 (1:396)
              left: 109*fem,
              top: 275*fem,
              child: Align(
                child: SizedBox(
                  width: 227*fem,
                  height: 40*fem,
                  child: Text(
                    'ĐĂNG NHẬP',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Roboto',
                      fontSize: 40*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1*ffem/fem,
                      letterSpacing: -0.8*fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // qunmtkhu1iF (1:404)
              left: 263.5*fem,
              top: 520*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 136*fem,
                    height: 18*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Quên mật khẩu ?',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1*ffem/fem,
                          letterSpacing: -0.36*fem,
                          decoration: TextDecoration.underline,
                          color: const Color(0xff32cd32),
                          decorationColor: const Color(0xff32cd32),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // imageqSP (1:414)
              left: 116*fem,
              top: 53*fem,
              child: Align(
                child: SizedBox(
                  width: 214*fem,
                  height: 198*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(125*fem),
                    child: Image.asset(
                      'assets/images/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // textbox8gP (3:601)
              left: 64*fem,
              top: 342*fem,
              child: Container(
                width: 355*fem,
                height: 160*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(5*fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // property1default32f (3:600)
                      left: 20*fem,
                      top: 20*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Username',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xffa5a5a5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // property1variant2FPd (3:602)
                      left: 20*fem,
                      top: 90*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Password',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725*ffem/fem,
                            color: const Color(0xffa5a5a5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // property1viewthV (88:235)
                      left: 300*fem,
                      top: 105*fem,
                      child: Align(
                        child: SizedBox(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/images/property-1view.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // filledb67 (3:909)
              left: 97*fem,
              top: 556*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
                width: 270*fem,
                height: 180*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(5*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // property1default5X5 (3:904)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: TextButton(
                            // filledmPu (3:830)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: const Color(0xff008000)),
                                color: const Color(0xff008000),
                                borderRadius: BorderRadius.circular(30*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'ĐĂNG NHẬP',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // property1variant2GV5 (3:910)
                      width: double.infinity,
                      height: 60*fem,
                      child: TextButton(
                        // filledpWb (3:911)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xff008000)),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(30*fem),
                          ),
                          child: Center(
                            child: Text(
                              'ĐĂNG KÝ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff008000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // lock5SX (88:230)
              left: 40*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/lock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // usercicrlezJb (88:238)
              left: 40*fem,
              top: 375*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/usercicrle-KwD.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}
