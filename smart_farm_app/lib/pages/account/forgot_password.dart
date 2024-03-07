import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/email/forgot_password_email.dart';
import 'package:smart_farm_app/pages/account/phone/forgot_password_phone.dart';

import 'package:smart_farm_app/utils/utils.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // qunmtkhu6g7 (9:627)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // qunmtkhucuM (9:630)
              left: 76*fem,
              top: 330*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 283*fem,
                    height: 40*fem,
                    child: Text(
                      'QUÊN MẬT KHẨU',
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
              // kisspngcomputericonsloginmanag (9:634)
              left: 114*fem,
              top: 99*fem,
              child: Align(
                child: SizedBox(
                  width: 201*fem,
                  height: 205*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100*fem),
                    child: Image.asset(
                      'assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149-2-p1m.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // phoneApP (11:758)
              left: 95*fem,
              top: 435*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(14*fem, 13*fem, 11*fem, 12*fem),
                  width: 100*fem,
                  height: 100*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: Center(
                    // phonecall1THh (10:707)
                    child: SizedBox(
                      width: 75*fem,
                      height: 75*fem,
                      child: Image.asset(
                        'assets/images/phone-call-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // emailnqm (11:759)
              left: 235*fem,
              top: 435*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(14*fem, 13*fem, 11*fem, 12*fem),
                  width: 100*fem,
                  height: 100*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: Center(
                    // arroba1ssD (10:709)
                    child: SizedBox(
                      width: 75*fem,
                      height: 75*fem,
                      child: Image.asset(
                        'assets/images/arroba-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // filledvariant3Dw5 (10:710)
              left: 95*fem,
              top: 555*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 230*fem,
                  height: 60*fem,
                  child: TextButton(
                    // filled943 (I10:710;8:625)
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
            Positioned(
              // chnsinthoihayemailouH (10:732)
              left: 86*fem,
              top: 392.5*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 263*fem,
                    height: 20*fem,
                    child: Text(
                      'CHỌN SỐ ĐIỆN THOẠI HAY EMAIL',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
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
