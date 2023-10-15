import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double basewidth = 415;
    double fem = MediaQuery.of(context).size.width / basewidth;
    double ffem = fem * 0.97;

    return SizedBox(
      width: double.infinity,
      child:  Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff34303e),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            padding: EdgeInsets.fromLTRB(25*fem, 34*fem, 18*fem, 23*fem),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Container(
                    width: 395 * fem,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10 * fem)
                    ),
                    child: const Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.search),
                        ),

                        SizedBox(width: 8 ,),
                        Text('Search')
                      ],
                    ),
                  )
                ],
              )
          ),//cari
          Container( margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 138*fem, 3*fem),
              child: Text(
                'RECOMANDATION FOR YOU',
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125 * ffem/ fem,
                  color: const Color(0xffffffff)
                ),
              )
          ),//recomand
          Container( margin: EdgeInsets.fromLTRB(25 *fem, 0*fem, 0*fem, 2*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0 *fem, 0*fem, 18*fem, 0*fem),
                      width: 175*fem,
                      height: 231*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7* fem),
                        child: Image.asset('assets/page-1/images/rectangle-8.png',
                        fit: BoxFit.fill,
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                      width: 175*fem,
                      height: 231*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7* fem),
                        child: Image.asset('assets/page-1/images/rectangle-9.png',
                          fit: BoxFit.fill,
                        ),
                      )
                  ),
                ],
              )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25 *fem, 0*fem, 0*fem, 2*fem),
            child: SizedBox(
            width: double.infinity,
            height: 54 * fem,

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: 84 * fem,
                        ),
                        child: Text(
                          'SUZUME NO TOJIMARI',
                          style: TextStyle(
                            fontFamily:
                            'roboto',
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Text('Movie',
                        style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * ffem / fem,
                            color: const Color(0xffffffff)
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(37*fem, 9*fem, 0*fem, 0*fem),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 1*fem),
                        width: 40*fem,
                        height: 40*fem,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20 * fem),
                            image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/page-1/images/ellipse-6-bg.png'
                                )
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                child: Text(
                                  'SPY X FAMILY',
                                  style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem/fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text('Chapter 87',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff)
                                ),
                              )
                            ]
                        ),
                      ),
                      Container(
                        // ellipse7Zbf (8:201)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 40*fem,
                        height: 40*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20*fem),
                          image: const DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/page-1/images/ellipse-7-bg.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ) ,
                )
              ],
            ),
          ),),//sizedbox
          Container(
          margin: EdgeInsets.fromLTRB(25 *fem, 25 *fem, 0*fem, 2*fem),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                  width: 175*fem,
                  height: 231*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7 * fem),
                    child: Image.asset('assets/page-1/images/rectangle-10.png',
                    fit: BoxFit.cover,
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                width: 175*fem,
                height: 231*fem,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7 * fem),
                  child: Image.asset('assets/page-1/images/rectangle-11.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
          Container(
            margin: EdgeInsets.fromLTRB(25 *fem, 0*fem, 0*fem, 2*fem),
            child: SizedBox(
              width: double.infinity,
              height: 54 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 84 * fem,
                          ),
                          child: Text(
                            'BORUTO',
                            style: TextStyle(
                              fontFamily:
                              'roboto',
                              fontSize: 15 * fem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Text('Chapter 89',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: const Color(0xffffffff)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(37*fem, 9*fem, 0*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 1*fem),
                          width: 40*fem,
                          height: 40*fem,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/page-1/images/ellipse-6-bg.png'
                                  )
                              )
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 100 * fem
                          ),
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                  child: Text(
                                    'DRAGON BALL',
                                    style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text('Chapter 87',
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xffffffff)
                                  ),
                                )
                              ]
                          ),
                        ),
                        Container(
                          // ellipse7Zbf (8:201)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 40*fem,
                          height: 40*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-7-bg.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ) ,
                  )
                ],
              ),
            ),
          ),//sizedbox

        ],
        ),
      ),
    );
  }
}
