import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NavHomePage extends StatelessWidget {
  List<String> bannerUrls = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyxa-eLd8zev29fJrS3QzTlELGkqngF4JKEplyHrpWRQ&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsd4kK67BG6vp6UqWDFpKsaJB0YMRgrK_6hRibt3FyLg&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREodNODEQbv_Dz9x3Ai7rubEGfxnfJ7gSon57P6xWZ0Q&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQALWckVvDJ-vIcC-y-wEq7bJrH-aHb-c3ky2BIvwxCZw&s=10"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: CarouselSlider.builder(
                itemCount: bannerUrls.length,
                itemBuilder: (_, index, _){
                  return Container(
                    margin: EdgeInsets.all(11),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      image: DecorationImage(
                        image: NetworkImage(bannerUrls[index]),
                        fit: BoxFit.cover
                      )
                    ),
                  );
                }, options: CarouselOptions(
              autoPlayAnimationDuration: Duration(seconds: 2),
              autoPlayCurve: Curves.slowMiddle,
              autoPlay: true,
              viewportFraction: 1
            )),
          ),
        ],
      )

          ///dotsindicator


      /*ListView.builder(itemBuilder: (_, index){
        return Container(
          margin: EdgeInsets.all(11),
          width: double.infinity,
          height: 200,
          color: Colors.amber,
        );
      })*/
      /*Center(
        child: Text('Home', style: TextStyle(
          fontSize: 25,
          color: Colors.black26
        ),),
      ),*/
    );
  }
}
