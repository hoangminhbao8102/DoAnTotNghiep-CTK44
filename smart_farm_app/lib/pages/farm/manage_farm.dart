import 'package:flutter/material.dart';
import 'package:smart_farm_app/utils/utils.dart';

class ManageFarm extends StatelessWidget {
  const ManageFarm({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // cpnhtthngtintrangtriRu9 (1:822)
        padding: EdgeInsets.fromLTRB(14*fem, 31*fem, 16*fem, 138*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupqhd1iNT (B8UBpRYWSCTgcFHia8qhd1)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 110.5*fem, 28*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupi3ry2tw (B8UBuvPMAV4jmVgFW3i3Ry)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 81.5*fem, 0*fem),
                    width: 24*fem,
                    height: 24*fem,
                    child: Image.asset(
                      'assets/images/auto-group-i3ry.png',
                      width: 24*fem,
                      height: 24*fem,
                    ),
                  ),
                  Container(
                    // thngtintrangtri9Tm (1:825)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                    child: Text(
                      'Thông tin trang trại',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.4*fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // danhschtrangtrihincQuV (44:210)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 36*fem),
              child: Text(
                'Danh sách trang trại hiện có',
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
            Container(
              // thngtintrangtrihNo (50:218)
              width: double.infinity,
              height: 655*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(5*fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // property1defaultD6F (50:219)
                    left: 20*fem,
                    top: 20*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25*fem, 20*fem, 108*fem, 16*fem),
                      width: 360*fem,
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
                            // farm4r9D (50:222)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/images/farm-4-uNo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // trangtrihngphtdachZZR (50:221)
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
                  ),
                  Positioned(
                    // property1variant2dZH (50:224)
                    left: 20*fem,
                    top: 126*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25*fem, 20*fem, 108*fem, 16*fem),
                      width: 360*fem,
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
                            // farm4tVD (50:227)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/images/farm-4.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // trangtrihngphtdachcRD (50:226)
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
                  ),
                  Positioned(
                    // property1variant36rB (50:229)
                    left: 20*fem,
                    top: 232*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25*fem, 20*fem, 108*fem, 16*fem),
                      width: 360*fem,
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
                            // farm4MGK (50:232)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/images/farm-4-8qV.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // trangtrihngphtdach5y1 (50:231)
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
                  ),
                  Positioned(
                    // property1variant4mqq (50:234)
                    left: 20*fem,
                    top: 338*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25*fem, 20*fem, 108*fem, 16*fem),
                      width: 360*fem,
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
                            // farm4EUX (50:237)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/images/farm-4-ziK.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // trangtrihngphtdachxfR (50:236)
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
                  ),
                  Positioned(
                    // property1variant5phd (50:239)
                    left: 20*fem,
                    top: 444*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12*fem, 18*fem, 108*fem, 18*fem),
                      width: 360*fem,
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
                            // autogroupknmmsR1 (B8UCMf9TrHAg74mZmBKNMm)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                            width: 61*fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // farm4BwV (50:242)
                                  left: 11*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 50*fem,
                                      height: 50*fem,
                                      child: Image.asset(
                                        'assets/images/farm-4-9fu.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // controllerWTy (50:243)
                                  left: 0*fem,
                                  top: 14*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 22*fem,
                                      height: 22*fem,
                                      child: Image.asset(
                                        'assets/images/controller.png',
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
                            // trangtrihngphtdachpDm (50:241)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
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
                  ),
                  Positioned(
                    // property1variant65vP (50:244)
                    left: 20*fem,
                    top: 550*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25*fem, 20*fem, 108*fem, 16*fem),
                      width: 360*fem,
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
                            // farm4kFq (50:247)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/images/farm-4-xB1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // trangtrihngphtdachfdh (50:246)
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
                  ),
                  Positioned(
                    // property1editfillLUw (111:189)
                    left: 305*fem,
                    top: 50*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1editfill.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1trashRWP (111:193)
                    left: 345*fem,
                    top: 50*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1trash.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant10vT9 (111:199)
                    left: 305*fem,
                    top: 155*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant10.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant91Ub (111:203)
                    left: 345*fem,
                    top: 155*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant9-bsD.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant12WgF (111:249)
                    left: 305*fem,
                    top: 260*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant12.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant11zrK (111:253)
                    left: 345*fem,
                    top: 260*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant11.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant14W3y (111:259)
                    left: 305*fem,
                    top: 370*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant14.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant13b5R (111:263)
                    left: 345*fem,
                    top: 370*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant13.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant16Uuu (111:269)
                    left: 305*fem,
                    top: 475*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant16.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant15nQo (111:273)
                    left: 345*fem,
                    top: 475*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant15.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant18Gas (111:279)
                    left: 305*fem,
                    top: 580*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant18.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // property1variant17Aw9 (111:283)
                    left: 344*fem,
                    top: 580*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/property-1variant17.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
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