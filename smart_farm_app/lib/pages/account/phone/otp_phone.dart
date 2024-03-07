import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/set_password.dart';
import 'package:smart_farm_app/utils/utils.dart';

class OTPPhoneScreen extends StatelessWidget {
  const OTPPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // nhpmotpinthoi8qd (1:486)
        padding: EdgeInsets.fromLTRB(45*fem, 99*fem, 45*fem, 161*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // kisspngcomputericonsloginmanag (1:498)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 45.5*fem),
              width: 201*fem,
              height: 205*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100*fem),
                child: Image.asset(
                  'assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149-3-EhD.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              // nhpotp7Bm (1:489)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 12.5*fem),
                child: Text(
                  'Nhập OTP\n',
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
            Center(
              // mtmcode4scgitiinthoicabnBxK (1:490)
              child: Container(
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 88*fem),
                constraints: BoxConstraints (
                  maxWidth: 327*fem,
                ),
                child: Text(
                  'Một mã code 4 số đã được gửi tới điện thoại của bạn',
                  textAlign: TextAlign.center,
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
            Container(
              // otpeL7 (11:760)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 50*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle12ApF (1:492)
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
                    // rectangle136C7 (1:493)
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
                    // rectangle14pP1 (1:494)
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
                    // rectangle15Ls9 (1:495)
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
              // autogroupapuh543 (B8U4rYK9R5GYaLdB6jAPuH)
              margin: EdgeInsets.fromLTRB(35*fem, 0*fem, 26*fem, 41*fem),
              width: double.infinity,
              height: 20*fem,
              child: Stack(
                children: [
                  Positioned(
                    // khngnhncmoVq (1:491)
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
                    // gilimfH9 (10:728)
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
              // filledvariant3Lu5 (89:329)
              margin: EdgeInsets.fromLTRB(62*fem, 0*fem, 48*fem, 0*fem),
              width: double.infinity,
              height: 60*fem,
              child: TextButton(
                // filledvariant3UVV (10:736)
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: TextButton(
                    // filledpZM (I10:736;8:625)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff008000)),
                        color: Color(0xff008000),
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
                            color: Color(0xffffffff),
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
