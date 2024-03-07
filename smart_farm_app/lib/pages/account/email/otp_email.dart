import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/set_password.dart';
import 'package:smart_farm_app/utils/utils.dart';

class OTPEmailScreen extends StatelessWidget {
  const OTPEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // nhpmotpemailuYB (10:739)
        padding: EdgeInsets.fromLTRB(45*fem, 99*fem, 45*fem, 161*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // kisspngcomputericonsloginmanag (10:747)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 31*fem),
              width: 201*fem,
              height: 205*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100*fem),
                child: Image.asset(
                  'assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149-3.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // nhpotpK67 (10:740)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 155*fem, 21*fem),
              child: Text(
                'Nhập OTP\n',
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
            Container(
              // mtmcode4scgitiemailcabnzxw (10:741)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 94*fem),
              constraints: BoxConstraints (
                maxWidth: 298*fem,
              ),
              child: Text(
                'Một mã code 4 số đã được gửi tới Email của bạn',
                style: SafeGoogleFont (
                  'Roboto',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1*ffem/fem,
                  letterSpacing: -0.4*fem,
                  color: const Color(0xffafadad),
                ),
              ),
            ),
            Container(
              // otpTrX (11:767)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 50*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle12bSw (10:743)
                    width: 70*fem,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      border: Border.all(color: const Color(0xff32cd32)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                  SizedBox(
                    width: 20*fem,
                  ),
                  Container(
                    // rectangle13iGf (10:744)
                    width: 70*fem,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      border: Border.all(color: const Color(0xff32cd32)),
                      color: const Color(0xfffffcfc),
                    ),
                  ),
                  SizedBox(
                    width: 20*fem,
                  ),
                  Container(
                    // rectangle14STZ (10:745)
                    width: 70*fem,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      border: Border.all(color: const Color(0xff32cd32)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                  SizedBox(
                    width: 20*fem,
                  ),
                  Container(
                    // rectangle15NMD (10:746)
                    width: 70*fem,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      border: Border.all(color: const Color(0xff32cd32)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup2bkmiAB (B8U5CwtowVznwVDcH32BKM)
              margin: EdgeInsets.fromLTRB(35*fem, 0*fem, 26*fem, 41*fem),
              width: double.infinity,
              height: 20*fem,
              child: Stack(
                children: [
                  Positioned(
                    // khngnhncm3CT (10:742)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 196*fem,
                        height: 20*fem,
                        child: Text(
                          'Không nhận được mã?',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.4*fem,
                            color: const Color(0xffafadad),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // gilim7y1 (10:748)
                    left: 195*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 84*fem,
                        height: 19*fem,
                        child: Text(
                          'Gửi lại mã',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 19*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.38*fem,
                            color: const Color(0xff008000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // filledvariant3b7V (89:328)
              margin: EdgeInsets.fromLTRB(62*fem, 0*fem, 48*fem, 0*fem),
              width: double.infinity,
              height: 60*fem,
              child: TextButton(
                // filledvariant3ihu (10:749)
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: TextButton(
                    // filledfNF (I10:749;8:625)
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
                          'XÁC NHẬN',
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
          ],
        ),
      ),
    );
  }
}
