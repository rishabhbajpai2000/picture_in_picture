import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

import 'BackGroundScreen.dart';

class FloatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        isFloating = false;
        return Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white, // Partially transparent
                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                ),
                child: Stack(children: [
                  // There will be a carausal of images here, which will be displayed inside the contianer.
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 500.0,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                    items: [
                      "https://picsum.photos/id/3/500/300.jpg",
                      "https://picsum.photos/id/7/500/300.jpg",
                      "https://picsum.photos/id/9/500/300.jpg",
                    ].map((String imageUrl) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      );
                    }).toList(),
                  ),
                  Positioned(
                      right: 0,
                      child: IconButton(
                          icon: const Icon(Icons.picture_in_picture),
                          onPressed: () {
                            PIPView.of(context)!
                                .presentBelow(BackgroundScreen());
                          }))
                ]),
              ),
            ));
      },
    );
  }
}
