import 'package:flutter/material.dart';
import 'package:smart_farm_app/utils/utils.dart';

class UpdateFarmScreen extends StatelessWidget {
  const UpdateFarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // cpnhtthngtinksH (47:757)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupnid55ef (B8UPnkGFySvCZm9S9sNid5)
              left: 30*fem,
              top: 29*fem,
              child: SizedBox(
                width: 303.5*fem,
                height: 24*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // arrowbackioszmd (47:758)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47.5*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/images/arrowbackios-gpP.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      // cpnhttrangtrihAF (47:761)
                      'CẬP NHẬT TRANG TRẠI',
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
            ),
            Positioned(
              // location2cY7 (47:762)
              left: 155*fem,
              top: 67*fem,
              child: Align(
                child: SizedBox(
                  width: 120*fem,
                  height: 120*fem,
                  child: Image.asset(
                    'assets/images/location-2-nNb.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // textbox8WT (47:763)
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
                      // property1variant3DH1 (47:764)
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
                      // property1variant24oR (47:766)
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
                      // property1variant3w6X (47:768)
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
                      // property1variant4avB (47:770)
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
                      // property1containerr71 (47:772)
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // dropdownboxBf5 (47:773)
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
                                  // chnloivtnuitJb (47:774)
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
                                  // chevronnum (47:775)
                                  width: 8*fem,
                                  height: 4*fem,
                                  child: Image.asset(
                                    'assets/images/chevron-zXZ.png',
                                    width: 8*fem,
                                    height: 4*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dropdown8Cw (47:776)
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
                                  // textfieldsCTh (47:777)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 244*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // giascusu (47:778)
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
                                        // giacmS79 (47:779)
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
                                        // thcngMzo (47:780)
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
                                  // scrollbarhYs (47:781)
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
                      // property1variant6obu (47:782)
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // dropdownboxM7d (47:783)
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
                                  // chnvtnuiEx7 (47:784)
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
                                  // chevronZDh (47:785)
                                  width: 8*fem,
                                  height: 4*fem,
                                  child: Image.asset(
                                    'assets/images/chevron-Dkb.png',
                                    width: 8*fem,
                                    height: 4*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // dropdownVNF (47:786)
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
                                  // textfieldsZN7 (47:787)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 272*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // bgSj (47:788)
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
                                        // dbZh (47:789)
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
                                        // cuvM5 (47:790)
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
                                  // scrollbarfpT (47:791)
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
              // xcnhn17d (47:792)
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
                        'assets/images/rectangle-71-4uV.png',
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'CẬP NHẬT',
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
              // locationEWB (47:793)
              left: 57*fem,
              top: 304*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/location-sfD.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // wide1YFy (47:794)
              left: 57*fem,
              top: 374*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/wide-1-K4b.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // counter1frP (47:795)
              left: 57*fem,
              top: 444*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/counter-1-CnB.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // livestock2PXV (47:796)
              left: 57*fem,
              top: 510*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/livestock-2-xJK.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // livestock3WMD (47:797)
              left: 57*fem,
              top: 680*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/livestock-3-4DM.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // field2Rj5 (47:798)
              left: 57*fem,
              top: 234*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/images/field-2-g2s.png',
                    fit: BoxFit.cover,
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