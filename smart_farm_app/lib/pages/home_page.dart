import 'package:flutter/material.dart';

import 'package:smart_farm_app/utils/utils.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // trangchdQs (1:499)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupubfuyDq (B8U69WAEp4xvZuNoxRubfu)
              left: 0*fem,
              top: 0*fem,
              child: SizedBox(
                width: 430*fem,
                height: 862*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // smartfarmappgP9 (1:517)
                      left: 128*fem,
                      top: 30*fem,
                      child: Align(
                        child: SizedBox(
                          width: 165*fem,
                          height: 20*fem,
                          child: Text(
                            'SMART FARM APP',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1*ffem/fem,
                              letterSpacing: -0.4*fem,
                              color: const Color(0xff008000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vtnuiNFy (16:586)
                      left: 20*fem,
                      top: 80*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20*fem, 17*fem, 3*fem, 23*fem),
                        width: 400*fem,
                        height: 170*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(30*fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ccloivtnuiSFq (1:508)
                              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 13*fem),
                              child: Text(
                                'CÁC LOẠI VẬT NUÔI',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxdxbLc7 (B8U6RurZiUAQTEbapcxDxB)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                              height: 70*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // giascFUB (16:582)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 15*fem, 15*fem),
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: const Color(0xffffe0e0),
                                          borderRadius: BorderRadius.circular(15*fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x3f000000),
                                              offset: Offset(0*fem, 4*fem),
                                              blurRadius: 2*fem,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          // cow1V7d (I16:582;14:409)
                                          child: SizedBox(
                                            width: 40*fem,
                                            height: 40*fem,
                                            child: Image.asset(
                                              'assets/images/cow-1.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // giacm1rf (16:583)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                    padding: EdgeInsets.fromLTRB(17*fem, 15*fem, 13*fem, 15*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xffffe0e0),
                                      borderRadius: BorderRadius.circular(15*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 2*fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      // chicken1uSF (I16:583;14:411)
                                      child: SizedBox(
                                        width: 40*fem,
                                        height: 40*fem,
                                        child: Image.asset(
                                          'assets/images/chicken-1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // thucngEjR (16:584)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                                    padding: EdgeInsets.fromLTRB(13*fem, 15*fem, 17*fem, 15*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xffffe0e0),
                                      borderRadius: BorderRadius.circular(15*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 2*fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      // pet1KVy (I16:584;14:413)
                                      child: SizedBox(
                                        width: 40*fem,
                                        height: 40*fem,
                                        child: Image.asset(
                                          'assets/images/pet-1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // giacmkhceo9 (16:585)
                                    padding: EdgeInsets.fromLTRB(14*fem, 15*fem, 16*fem, 15*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xffffe0e0),
                                      borderRadius: BorderRadius.circular(15*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 2*fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      // duck1kLP (I16:585;14:415)
                                      child: SizedBox(
                                        width: 40*fem,
                                        height: 40*fem,
                                        child: Image.asset(
                                          'assets/images/duck-1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupgu4k5Nf (B8U6djrC1dXLhrpuutGu4K)
                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // giasc11R (1:509)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                                    child: Text(
                                      'GIA SÚC',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // giacmigX (1:510)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                                    child: Text(
                                      'GIA CẦM',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // thcngEes (14:404)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'THÚ CƯNG',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // giacmkhcYfZ (14:405)
                                    'GIA CẦM KHÁC',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // menusxj (88:246)
                      left: 35*fem,
                      top: 20*fem,
                      child: Align(
                        child: SizedBox(
                          width: 40*fem,
                          height: 40*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/images/menu.png',
                              width: 40*fem,
                              height: 40*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // addringfillAwq (88:250)
                      left: 150*fem,
                      top: 789*fem,
                      child: Align(
                        child: SizedBox(
                          width: 130*fem,
                          height: 130*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/images/addringfill.png',
                              width: 130*fem,
                              height: 130*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // bellfdh (88:322)
                      left: 350*fem,
                      top: 21*fem,
                      child: Align(
                        child: SizedBox(
                          width: 40*fem,
                          height: 40*fem,
                          child: Image.asset(
                            'assets/images/bell.png',
                            width: 40*fem,
                            height: 40*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupdvgfnCX (B8U5cgiFpHLM39d6P7DvgF)
                      left: 33*fem,
                      top: 293*fem,
                      child: SizedBox(
                        width: 367*fem,
                        height: 220*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle986j1 (103:264)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                              width: 160*fem,
                              height: 220*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // rectangle99cxF (103:287)
                              width: 160*fem,
                              height: 220*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupb41mNRd (B8U5jbgQNNQ1HR5g1Gb41m)
                      left: 33*fem,
                      top: 533*fem,
                      child: SizedBox(
                        width: 367*fem,
                        height: 220*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle100Txs (103:288)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                              width: 160*fem,
                              height: 220*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // rectangle101bZH (103:289)
                              width: 160*fem,
                              height: 220*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // ccsnphmLmm (103:290)
                      left: 47*fem,
                      top: 261.5*fem,
                      child: Align(
                        child: SizedBox(
                          width: 122*fem,
                          height: 19*fem,
                          child: Text(
                            'CÁC SẢN PHẨM',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1725*ffem/fem,
                              color: const Color(0xff000000),
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
              // autogroupnbs5dks (B8U5qgLc5sJqbZ5zPzNBs5)
              left: 0*fem,
              top: 862*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(53*fem, 6*fem, 43*fem, 10*fem),
                width: 430*fem,
                height: 70*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // home8Sj (1:519)
                      margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 0*fem, 1*fem),
                      width: 35*fem,
                      height: 35*fem,
                      child: Image.asset(
                        'assets/images/home-crB.png',
                        width: 35*fem,
                        height: 35*fem,
                      ),
                    ),
                    SizedBox(
                      // autogrouphis1F1Z (B8U5wqq15pqMW738iFhis1)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // trangchyy9 (1:522)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 222*fem, 0*fem),
                            child: Text(
                              'Trang chủ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff008000),
                              ),
                            ),
                          ),
                          Container(
                            // thngk6Xy (17:599)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            child: Text(
                              'Thống kê',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff008000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // thngkDMh (19:374)
              left: 347*fem,
              top: 867*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: Image.asset(
                    'assets/images/thng-k.png',
                    width: 30*fem,
                    height: 30*fem,
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
