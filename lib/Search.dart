import 'package:flutter/material.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({Key? key}) : super(key: key);

  @override
  _SearchBarAppState createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  final TextEditingController _searchController = TextEditingController();
  String _searchResult = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF34303E),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Search for something...',
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                      filled: true,fillColor: const Color(0xFF5E5B63)
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchResult = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  'Recomandation : $_searchResult',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.fromLTRB(2, 0, 0, 2),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8), // Margin antara gambar dan teks
                            width: 175,
                            height: 231,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                'assets/page-1/images/suzume.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'SUZUME NO TOJIMARI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Movie',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25), // Jarak antara dua gambar
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                            width: 175,
                            height: 231,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                'assets/page-1/images/sxf.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'SPY X FAMILY',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Chapter 56',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.fromLTRB(2, 0, 0, 2),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8), // Margin antara gambar dan teks
                            width: 175,
                            height: 231,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                'assets/page-1/images/boruto.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'BORUTO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Chapter 46',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25), // Jarak antara dua gambar
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                            width: 175,
                            height: 231,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                'assets/page-1/images/dragonball.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'DRAGON BALL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Chapter 56',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.fromLTRB(2, 20, 0, 2),
                //   width: double.infinity,
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Container(
                //         margin: const EdgeInsets.fromLTRB(0, 0, 18, 0),
                //         width: 175,
                //         height: 231,
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(7),
                //           child: Image.asset(
                //             'assets/page-1/images/boruto.png',
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         margin: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Sesuaikan margin sesuai kebutuhan
                //         width: 175,
                //         height: 231,
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(7),
                //           child: Image.asset(
                //             'assets/page-1/images/dragonball.png',
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),//baris 2
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

