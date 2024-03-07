import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/log_in.dart';

import 'package:smart_farm_app/utils/utils.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // ngkJUw (1:415)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // ngkogb (1:417)
              left: 133.5*fem,
              top: 260*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 168*fem,
                    height: 40*fem,
                    child: Text(
                      'ĐĂNG KÝ',
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
            ),
            Positioned(
              // imagefio (1:449)
              left: 110*fem,
              top: 33*fem,
              child: Align(
                child: SizedBox(
                  width: 214*fem,
                  height: 198*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(125*fem),
                    child: Image.asset(
                      'assets/images/image-i3y.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // textboxyDh (7:602)
              left: 64*fem,
              top: 309*fem,
              child: Container(
                width: 355*fem,
                height: 510*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(5*fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // property1defaultgdu (7:601)
                      left: 20*fem,
                      top: 20*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Họ và tên người dùng',
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
                      // property1variant2X8j (7:603)
                      left: 20*fem,
                      top: 90*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Địa chỉ',
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
                      // property1variant3MdZ (7:605)
                      left: 20*fem,
                      top: 160*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Số điện thoại',
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
                      // property1variant4DQs (7:607)
                      left: 20*fem,
                      top: 230*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Email',
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
                      // property1variant54RV (7:609)
                      left: 20*fem,
                      top: 300*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
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
                      // property1variant6KcK (7:613)
                      left: 20*fem,
                      top: 370*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
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
                      // property1variant7Asq (8:615)
                      left: 20*fem,
                      top: 440*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: 315*fem,
                        height: 50*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Nhập lại Password',
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
                      // property1variant4SKZ (88:288)
                      left: 300*fem,
                      top: 385*fem,
                      child: Align(
                        child: SizedBox(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/images/property-1variant4.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // property1variant9MBd (88:293)
                      left: 300*fem,
                      top: 455*fem,
                      child: Align(
                        child: SizedBox(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/images/property-1variant9.png',
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
              // filledvariant3463 (8:624)
              left: 100*fem,
              top: 825*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 230*fem,
                  height: 60*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(20*fem),
                  ),
                  child: TextButton(
                    // filledxSK (8:625)
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
                          'ĐĂNG KÝ',
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
            Positioned(
              // usercicrle2wy (88:242)
              left: 40*fem,
              top: 340*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/usercicrle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // usercicrleKgB (89:331)
              left: 40*fem,
              top: 620*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/usercicrle-sh1.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // pin2qV (88:255)
              left: 40*fem,
              top: 410*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/pin.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // lockYoq (88:269)
              left: 40*fem,
              top: 690*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/lock-57M.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // lockFy9 (88:270)
              left: 40*fem,
              top: 760*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/lock-Tjm.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // phonemwV (88:271)
              left: 40*fem,
              top: 480*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/phone.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // messagefillJAj (88:281)
              left: 40*fem,
              top: 555*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/messagefill.png',
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
