import 'package:flutter/material.dart';
import 'package:smart_farm_app/utils/utils.dart';

class ChooseLivestockScreen extends StatelessWidget {
  const ChooseLivestockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // vtnuigiascaRm (1:1590)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff3f4f7),
        ),
        child: Stack(
          children: [
            Positioned(
              // giascW4X (1:1598)
              left: 177*fem,
              top: 31*fem,
              child: Align(
                child: SizedBox(
                  width: 81*fem,
                  height: 22*fem,
                  child: Text(
                    'GIA SÚC',
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
              // cowb5y (14:417)
              left: 158*fem,
              top: 84*fem,
              child: Align(
                child: SizedBox(
                  width: 120*fem,
                  height: 120*fem,
                  child: Image.asset(
                    'assets/images/cow.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // chnvtnui6oR (16:536)
              left: 85*fem,
              top: 229*fem,
              child: Align(
                child: SizedBox(
                  width: 266*fem,
                  height: 36*fem,
                  child: Text(
                    'CHỌN VẬT NUÔI',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Roboto',
                      fontSize: 36*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1*ffem/fem,
                      letterSpacing: -0.72*fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // tiptcPnX (35:361)
              left: 103*fem,
              top: 848*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(80.5*fem, 21*fem, 77.5*fem, 22*fem),
                  width: 231*fem,
                  height: 63*fem,
                  decoration: const BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/images/rectangle-70.png',
                      ),
                    ),
                  ),
                  child: Center(
                    // tiptc4dm (16:540)
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints (
                          maxWidth: 73*fem,
                        ),
                        child: Text(
                          'TIẾP TỤC',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1*ffem/fem,
                            letterSpacing: -0.4*fem,
                            color: const Color(0xfffffafa),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // arrowleftZ4j (91:334)
              left: 30*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 25*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/images/arrowleft.png',
                      width: 25*fem,
                      height: 25*fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // textboxvariant8SPR (103:242)
              left: 50*fem,
              top: 319*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                width: 345*fem,
                height: 178*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // dropdownboxj7d (103:243)
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
                            // chnloivtnui1L3 (103:244)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 222*fem, 0*fem),
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
                            // chevronhif (103:245)
                            width: 8*fem,
                            height: 4*fem,
                            child: Image.asset(
                              'assets/images/chevron-arj.png',
                              width: 8*fem,
                              height: 4*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // dropdownqK5 (103:246)
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
                            // textfields7XV (103:247)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // giasc2eT (103:248)
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
                                  // giacmLQF (103:249)
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
                                  // thcngFXD (103:250)
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
                            // scrollbarPdR (103:251)
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
            ),
            Positioned(
              // textboxvariant7ifh (103:252)
              left: 50*fem,
              top: 521*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                width: 345*fem,
                height: 178*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // dropdownboxQoR (103:253)
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
                            // chnvtnuihXd (103:254)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 245*fem, 0*fem),
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
                            // chevronc8o (103:255)
                            width: 8*fem,
                            height: 4*fem,
                            child: Image.asset(
                              'assets/images/chevron.png',
                              width: 8*fem,
                              height: 4*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // dropdownwgs (103:256)
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
                            // textfieldsEAB (103:257)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 302*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // bxby (103:258)
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
                                  // dsyq (103:259)
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
                                  // cu1q9 (103:260)
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
                            // scrollbarYaB (103:261)
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
            ),
          ],
        ),
      ),
    );
  }
}