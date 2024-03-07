import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/email/otp_email.dart';

import 'package:smart_farm_app/utils/utils.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  const ForgotPasswordEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // qunmtkhuemaildoD (9:664)
        padding: EdgeInsets.fromLTRB(43*fem, 99*fem, 31*fem, 360*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // kisspngcomputericonsloginmanag (9:671)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 32*fem),
              width: 201*fem,
              height: 205*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100*fem),
                child: Image.asset(
                  'assets/page-1/images/kisspng-computer-icons-login-management-user-5ae155f3386149-2-1ro.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // qunmtkhuznB (9:667)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 53*fem),
              child: Text(
                'Quên mật khẩu',
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
            Container(
              // autogroupycwh64X (B8U4Btksk9ooGn1nkFyCwH)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
              width: double.infinity,
              height: 50*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // messagefill1hH (88:296)
                    margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 23*fem, 0*fem),
                    width: 18*fem,
                    height: 14*fem,
                    child: Image.asset(
                      'assets/page-1/images/messagefill-YAs.png',
                      width: 18*fem,
                      height: 14*fem,
                    ),
                  ),
                  Container(
                    // textbox81D (9:676)
                    padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                    width: 315*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff32cd32)),
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Text(
                      'Nhập Email',
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725*ffem/fem,
                        color: const Color(0xffa5a5a5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // filledvariant3QDd (89:330)
              margin: EdgeInsets.fromLTRB(57*fem, 0*fem, 69*fem, 0*fem),
              width: double.infinity,
              height: 60*fem,
              child: TextButton(
                // filledvariant39BD (10:733)
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: TextButton(
                    // filledt8o (I10:733;8:625)
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
                          'TIẾP TỤC',
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