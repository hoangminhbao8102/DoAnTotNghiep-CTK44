import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/log_in.dart';
import 'package:smart_farm_app/utils/utils.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // tlimtkhubPD (1:469)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // tlimtkhuKKD (1:472)
              left: 75.5*fem,
              top: 360*fem,
              child: Align(
                child: SizedBox(
                  width: 294*fem,
                  height: 40*fem,
                  child: Text(
                    'Đặt lại mật khẩu',
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
              // kisspngcomputericonsloginmanag (1:484)
              left: 114*fem,
              top: 109*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 205*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100*fem),
                    child: Image.asset(
                      'assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149-2-tqu.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // textboxV7D (10:721)
              left: 64*fem,
              top: 440*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
                width: 355*fem,
                height: 160*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(5*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // property1defaultyo5 (10:720)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      height: 50*fem,
                      child: Container(
                        // textboxKM9 (10:713)
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Mật khẩu mới',
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
                    SizedBox(
                      // property1variant2bJf (10:722)
                      width: double.infinity,
                      height: 50*fem,
                      child: Container(
                        // textboxkST (10:723)
                        padding: EdgeInsets.fromLTRB(8*fem, 17.5*fem, 8*fem, 17.5*fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          border: Border.all(color: const Color(0xff32cd32)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Text(
                          'Nhập lại mật khẩu mới',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // filledvariant3295 (89:327)
              left: 100*fem,
              top: 624*fem,
              child: SizedBox(
                width: 230*fem,
                height: 60*fem,
                child: TextButton(
                  // filledvariant3wmq (10:752)
                  onPressed: () {},
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: TextButton(
                      // filledVYT (I10:752;8:625)
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
                            'ĐẶT LẠI MẬT KHẨU',
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
              // lockN6T (89:325)
              left: 40*fem,
              top: 475*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/lock-An3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // lock4V5 (89:326)
              left: 40*fem,
              top: 545*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/lock-iD5.png',
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
