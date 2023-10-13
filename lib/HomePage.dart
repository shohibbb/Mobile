import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 415;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff34303e)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            height: 368,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff000000)),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/page-1/images/rectangle-5-bg.png'),
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        350 * fem, 0 * fem, 0 * fem, 185.5 * fem),
                    width: 25 * fem,
                    height: 25 * fem,
                    child: Image.asset(
                      'assets/page-1/images/info.png',
                      width: 25 * fem,
                      height: 25 * fem,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          71.5 * fem, 0 * fem, 71.5 * fem, 10.36 * fem),
                      child: Text(
                        'Ryoiki tenkai',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 32 * fem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * fem / fem,
                            color: const Color(0xfffffefe)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        80 * fem, 0 * fem, 74.5 * fem, 10.91 * fem),
                    width: 220 * fem,
                    height: 55.64 * fem,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff1d5597)),
                        color: const Color(0xff34303e),
                        borderRadius: BorderRadius.circular(15 * fem),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff34303e),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem),
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          )
                        ]),
                    child: Center(
                      child: Center(
                        child: Text(
                          'START READ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'robot',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xfffffefe)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // unioneMo (4:50)
                    margin: EdgeInsets.fromLTRB(
                        80 * fem, 0 * fem, 76.5 * fem, 0 * fem),
                    width: 114 * fem,
                    height: 10.91 * fem,
                    child: Image.asset(
                      'assets/page-1/images/union-iCH.png',
                      width: 114 * fem,
                      height: 10.91 * fem,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      // height: ,
                      child: Text('TYPE OF COMIC', textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12*fem,
                            fontWeight: FontWeight.w400,
                            height:2 * ffem/fem,
                            color: const Color(0xffffffff)
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),// sukuna
          Container(padding:
          EdgeInsets.fromLTRB(4 * fem, 14.5 * fem, 0 * fem, 9 * fem),

              width: double.infinity,
              child: Column(crossAxisAlignment:  CrossAxisAlignment.center,
                children: [
                  Container(margin: EdgeInsets.fromLTRB(
                      14 * fem, 0 * fem, 17 * fem, 16.5 * fem),
                      width: double.infinity,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Container(
                          // ellipse25rR (4:34)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 66 * fem,
                          height: 66 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33 * fem),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/page-1/images/ellipse-2-bg.png',
                              ),
                            ),
                          ),
                        ),
                          Container(
                            // ellipse25rR (4:34)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33 * fem),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/ellipse-1-bg.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // ellipse25rR (4:34)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33 * fem),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/ellipse-3-bg.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // ellipse25rR (4:34)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33 * fem),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/icon-color-palette.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // ellipse25rR (4:34)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33 * fem),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/icon-colored-palette.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  )
                ],)
          ),// flag
          Container(
              margin: EdgeInsets.fromLTRB(
                  13.5 * fem, 0 * fem, 8 * fem, 24.5 * fem),
              width: double.infinity,
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 257.78 * fem, 0 * fem),
                      child: Text(
                        'NEW UPDATE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12 * fem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 53.72 * fem,
                    height: 17 * fem,
                    child: Image.asset('assets/page-1/images/union.png',
                      width: 53.72 * fem,
                      height: 17 * fem,
                    ),
                  )
                ],
              )
          ),// tulisan itulah
          Container(
            width: 441 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11 * fem), ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 13 * fem, 0 * fem),
                    width: 124 * fem,
                    height: 208 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11* fem),
                      child: Image.asset('assets/page-1/images/rectangle-2.png',
                        fit: BoxFit.cover,
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 13 * fem, 0 * fem),
                    width: 124 * fem,
                    height: 208 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11* fem),
                      child: Image.asset('assets/page-1/images/rectangle-3.png',
                        fit: BoxFit.cover,
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 11 * fem, 0 * fem),
                    width: 124 * fem,
                    height: 208 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11* fem),
                      child: Image.asset('assets/page-1/images/rectangle-4.png',
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ],
            ),
          ),// gambar eren
          Container(
            padding: EdgeInsets.fromLTRB(30 * fem, 11.5 * fem, 34 * fem, 1.24 * fem) ,
            width: double.infinity,
            height: 82 * fem,
            decoration: BoxDecoration(
              color: const Color(0xff34303e),
              borderRadius: BorderRadius.circular(5 * fem),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(5 * fem, 5.59 * fem, 44 * fem, 9.76 * fem),
                  width: 40 * fem,
                  height: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.7 * fem),
                        width: 40 * fem,
                        height: 40 * fem,
                        child: Image.asset('assets/page-1/images/icon-home-mGM.png',
                            width: 40 * fem,
                            height: 40 * fem
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Home',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1725 * ffem / fem
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 5.59 * fem, 44 * fem, 9.76 * fem),
                  width: 40 * fem,
                  height: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.7 * fem),
                        width: 40 * fem,
                        height: 40 * fem,
                        child: Image.asset('assets/page-1/images/icon-search-outline.png',
                            width: 40 * fem,
                            height: 40 * fem
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Search',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1725 * ffem / fem
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 5.59 * fem, 44 * fem, 9.76 * fem),
                  width: 40 * fem,
                  height: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.7 * fem),
                        width: 40 * fem,
                        height: 40 * fem,
                        child: Image.asset('assets/page-1/images/icon-history-ZuT.png',
                            width: 40 * fem,
                            height: 40 * fem
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'History',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1725 * ffem / fem
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 5.59 * fem, 54 * fem, 9.76 * fem),
                  width: 40 * fem,
                  height: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.7 * fem),
                        width: 40 * fem,
                        height: 40 * fem,
                        child: Image.asset('assets/page-1/images/icon-search-outline.png',
                            width: 40 * fem,
                            height: 40 * fem
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Search',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1725 * ffem / fem
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )//menu
        ]
        )
    );
  }
}
