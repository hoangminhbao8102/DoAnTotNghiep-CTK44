import 'package:flutter/material.dart';
import 'package:smart_farm_app/utils/utils.dart';

class CreateFarmScreen extends StatelessWidget {
  const CreateFarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // totrangtrir9V (19:375)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // totrangtriAR5 (19:379)
              left: 132.5*fem,
              top: 31*fem,
              child: Align(
                child: SizedBox(
                  width: 170*fem,
                  height: 22*fem,
                  child: Text(
                    'TẠO TRANG TRẠI',
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
                ),
              ),
            ),
            Positioned(
              // location2SNb (19:381)
              left: 155*fem,
              top: 67*fem,
              child: Align(
                child: SizedBox(
                  width: 120*fem,
                  height: 120*fem,
                  child: Image.asset(
                    'assets/images/location-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // textboxN1M (19:384)
              left: 69*fem,
              top: 201*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
                width: 355*fem,
                height: 636*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(5*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // property1variant3dT5 (19:382)
                      padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xffa5a5a5)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Text(
                        'Tên trang trại',
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725*ffem/fem,
                          color: const Color(0xffa5a5a5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // property1variant2tP1 (19:385)
                      padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xffa5a5a5)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Text(
                        'Vị trí',
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725*ffem/fem,
                          color: const Color(0xffa5a5a5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // property1variant3xdm (19:387)
                      padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xffa5a5a5)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Text(
                        'Diện tích',
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725*ffem/fem,
                          color: const Color(0xffa5a5a5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // property1variant42tX (19:416)
                      padding: EdgeInsets.fromLTRB(8*fem, 18*fem, 8*fem, 17*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xffa5a5a5)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Text(
                        'Số lượng con',
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725*ffem/fem,
                          color: const Color(0xffa5a5a5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // property1containerhjm (19:429)
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // dropdownboxeQ7 (19:419)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                            padding: EdgeInsets.fromLTRB(8*fem, 15.5*fem, 9*fem, 15.5*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff72a2ff)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // chnloivtnuiwPD (19:420)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 192*fem, 0*fem),
                                  child: Text(
                                    'Chọn loại vật nuôi',
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725*ffem/fem,
                                      color: const Color(0xff3f3f3f),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // chevroneHd (19:421)
                                  width: 8*fem,
                                  height: 4*fem,
                                  child: Image.asset(
                                    'assets/images/chevron-sAF.png',
                                    width: 8*fem,
                                    height: 4*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dropdownAWs (19:422)
                            padding: EdgeInsets.fromLTRB(8*fem, 11.5*fem, 8*fem, 11.5*fem),
                            width: double.infinity,
                            height: 98*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xffdadada)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 4*fem,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // textfieldsprK (19:423)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 244*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // giasc8c7 (19:424)
                                        'Gia súc',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725*ffem/fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15*fem,
                                      ),
                                      Text(
                                        // giacmd35 (19:425)
                                        'Gia cầm',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725*ffem/fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15*fem,
                                      ),
                                      Text(
                                        // thcngKAo (19:426)
                                        'Thú cưng',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725*ffem/fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // scrollbar3cb (19:427)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                                  width: 4*fem,
                                  height: 40*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(2*fem),
                                    color: const Color(0xffdadada),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // property1variant6Z59 (19:430)
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // dropdownboxVjV (19:431)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                            padding: EdgeInsets.fromLTRB(8*fem, 15.5*fem, 9*fem, 15.5*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff72a2ff)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // chnvtnuizw9 (19:432)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 215*fem, 0*fem),
                                  child: Text(
                                    'Chọn vật nuôi',
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725*ffem/fem,
                                      color: const Color(0xff3f3f3f),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // chevroniMM (19:433)
                                  width: 8*fem,
                                  height: 4*fem,
                                  child: Image.asset(
                                    'assets/images/chevron-uZZ.png',
                                    width: 8*fem,
                                    height: 4*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dropdownFcB (19:434)
                            padding: EdgeInsets.fromLTRB(8*fem, 11.5*fem, 8*fem, 11.5*fem),
                            width: double.infinity,
                            height: 98*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xffdadada)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(20*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 4*fem,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // textfieldsviK (19:435)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 272*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // brrs (19:436)
                                        'Bò',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725*ffem/fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15*fem,
                                      ),
                                      Text(
                                        // dPM1 (19:437)
                                        'Dê',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725*ffem/fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15*fem,
                                      ),
                                      Text(
                                        // cuuaF (19:438)
                                        'Cừu',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725*ffem/fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // scrollbarenj (19:439)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                                  width: 4*fem,
                                  height: 40*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(2*fem),
                                    color: const Color(0xffdadada),
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
            ),
            Positioned(
              // xcnhnyq1 (19:453)
              left: 99*fem,
              top: 852*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 231*fem,
                  height: 63*fem,
                  decoration: const BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/images/rectangle-71.png',
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'XÁC NHẬN',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.4*fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // locationCSs (19:445)
              left: 57*fem,
              top: 304*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/location.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // wide1us5 (19:447)
              left: 57*fem,
              top: 374*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/wide-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // counter1EPZ (19:449)
              left: 57*fem,
              top: 444*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/counter-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // livestock2k71 (19:451)
              left: 57*fem,
              top: 510*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/livestock-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // livestock34Nb (19:452)
              left: 57*fem,
              top: 680*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/livestock-3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // field2n3h (47:756)
              left: 57*fem,
              top: 234*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/field-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // arrowleftgum (91:347)
              left: 30*fem,
              top: 28*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 25*fem,
                  child: Image.asset(
                    'assets/images/arrowleft-gCP.png',
                    width: 25*fem,
                    height: 25*fem,
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