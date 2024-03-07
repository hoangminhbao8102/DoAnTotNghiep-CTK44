import 'package:flutter/material.dart';
import 'package:smart_farm_app/utils/utils.dart';

class FarmScreen extends StatelessWidget {
  const FarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // thngtintrangtricachshuctX (1:1679)
        padding: EdgeInsets.fromLTRB(15*fem, 28*fem, 15*fem, 27*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff4f3f7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupeh2fJmM (B8UMG9orXp8kK9TDNEEH2f)
              margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 79*fem, 9*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // arrowbackiosEQ7 (1:1691)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/images/arrowbackios-64w.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    // thngtinchshuVL3 (1:1682)
                    'THÔNG TIN CHỦ SỞ HỮU',
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
                ],
              ),
            ),
            Container(
              // autogrouptcajznb (B8UMN4ofgPpDSTZsurtcaj)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
              width: double.infinity,
              height: 189*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle79iyV (1:1698)
                    left: 0*fem,
                    top: 47*fem,
                    child: Align(
                      child: SizedBox(
                        width: 360*fem,
                        height: 142*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15*fem),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image13D9Z (1:1699)
                    left: 129*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 93.71*fem,
                        height: 94*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(150*fem),
                          child: Image.asset(
                            'assets/images/image-13-UtP.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // minhbominhbaogmailcom091234567 (1:1700)
                    left: 104.5*fem,
                    top: 99*fem,
                    child: Align(
                      child: SizedBox(
                        width: 142*fem,
                        height: 66*fem,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 22*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1*ffem/fem,
                              letterSpacing: -0.44*fem,
                              color: const Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Minh Bảo\n',
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 22*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1*ffem/fem,
                                  letterSpacing: -0.44*fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: 'minhbao@gmail.com\n09123456789',
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w200,
                                  height: 1.375*ffem/fem,
                                  letterSpacing: -0.44*fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // thngtintrangtriYsy (65:255)
              padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 19*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(5*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // property1defaultSiT (65:256)
                    padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 107*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // farm4K1Z (65:259)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 16*fem, 0*fem),
                          width: 50*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/images/farm-4-wYB.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // trangtrihngphtdachEeK (65:258)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          constraints: BoxConstraints (
                            maxWidth: 162*fem,
                          ),
                          child: Text(
                            'TRANG TRẠI HỒNG PHÁT\nDịa chỉ:',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.28*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // property1variant26wR (65:260)
                    padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 100*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // farm4abh (65:263)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 23*fem, 0*fem),
                          width: 50*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/images/farm-4-kAK.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // trangtrihngphtdachuts (65:262)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          constraints: BoxConstraints (
                            maxWidth: 162*fem,
                          ),
                          child: Text(
                            'TRANG TRẠI HỒNG PHÁT\nDịa chỉ:',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.28*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // property1variant3nSs (65:264)
                    padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 99*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // farm45Ry (65:267)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 24*fem, 0*fem),
                          width: 50*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/images/farm-4-b27.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // trangtrihngphtdachQDM (65:266)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          constraints: BoxConstraints (
                            maxWidth: 162*fem,
                          ),
                          child: Text(
                            'TRANG TRẠI HỒNG PHÁT\nDịa chỉ:',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.28*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // property1variant4Fjm (65:268)
                    padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 99*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // farm4wcb (65:271)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 24*fem, 0*fem),
                          width: 50*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/images/farm-4-37M.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // trangtrihngphtdachsWF (65:270)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          constraints: BoxConstraints (
                            maxWidth: 162*fem,
                          ),
                          child: Text(
                            'TRANG TRẠI HỒNG PHÁT\nDịa chỉ:',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.28*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // property1variant5Y6b (65:272)
                    padding: EdgeInsets.fromLTRB(12*fem, 18*fem, 98*fem, 18*fem),
                    width: double.infinity,
                    height: 86*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupmyshpZu (B8UMntReF99eFVG721MYsh)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                          width: 61*fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // farm4jgs (65:275)
                                left: 11*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 50*fem,
                                    height: 50*fem,
                                    child: Image.asset(
                                      'assets/images/farm-4-2GX.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // controllerrWb (65:276)
                                left: 0*fem,
                                top: 14*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 22*fem,
                                    height: 22*fem,
                                    child: Image.asset(
                                      'assets/images/controller-1eX.png',
                                      width: 22*fem,
                                      height: 22*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // trangtrihngphtdachxpX (65:274)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                          constraints: BoxConstraints (
                            maxWidth: 162*fem,
                          ),
                          child: Text(
                            'TRANG TRẠI HỒNG PHÁT\nDịa chỉ:',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.28*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // property1variant6cPH (65:277)
                    padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 98*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15*fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // farm4trb (65:280)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 25*fem, 0*fem),
                          width: 50*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/images/farm-4-xfy.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // trangtrihngphtdachQpw (65:279)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          constraints: BoxConstraints (
                            maxWidth: 162*fem,
                          ),
                          child: Text(
                            'TRANG TRẠI HỒNG PHÁT\nDịa chỉ:',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.28*fem,
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
          ],
        ),
      ),
          );
  }
}