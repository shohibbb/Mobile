import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
            ),
            items: [
              'assets/page-1/images/rectangle-5-bg.png',
              'assets/page-1/images/onepeace.png',
              'assets/page-1/images/opm.png',
            ].map((String imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imagePath),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                child: ClipOval(
                  child: Image.asset(
                    'assets/page-1/images/china.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                child: ClipOval(
                  child: Image.asset(
                    'assets/page-1/images/jepang.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                child: ClipOval(
                  child: Image.asset(
                    'assets/page-1/images/korea.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                height: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                child: ClipOval(
                  child: Image.asset(
                    'assets/page-1/images/icon-color-palette.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                height: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                child: ClipOval(
                  child: Image.asset(
                    'assets/page-1/images/icon-colored-palette.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
