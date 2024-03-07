import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/phone/otp_phone.dart';

import 'package:smart_farm_app/utils/utils.dart';

class ForgotPasswordPhoneScreen extends StatelessWidget {
  const ForgotPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // qunmtkhuinthoinoH (1:455)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // qunmtkhuu7D (1:458)
              left: 89*fem,
              top: 336*fem,
              child: Align(
                child: SizedBox(
                  width: 266*fem,
                  height: 40*fem,
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
              ),
            ),
            Positioned(
              // kisspngcomputericonsloginmanag (1:467)
              left: 114*fem,
              top: 99*fem,
              child: Align(
                child: SizedBox(
                  width: 201*fem,
                  height: 205*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100*fem),
                    child: Image.asset(
                      'assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // textboxqf5 (7:597)
              left: 84*fem,
              top: 429*fem,
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
                  'Nhập số điện thoại',
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
              // filledvariant3tdM (89:333)
              left: 100*fem,
              top: 512*fem,
              child: SizedBox(
                width: 230*fem,
                height: 60*fem,
                child: TextButton(
                  // filledvariant3Dfd (10:729)
                  onPressed: () {},
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: TextButton(
                      // filledkvT (I10:729;8:625)
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
            ),
            Positioned(
              // phone38s (89:332)
              left: 40*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/phone-kNj.png',
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
