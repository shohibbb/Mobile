import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // const Home({super.key});

  final List<Widget> myslide = [

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3)
        ),
        items: [1,2,3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Center(child : Text('text $i', style: const TextStyle(fontSize: 16.0),))
              );
            },
          );
        }).toList(),
      ),

    );
  }
}
