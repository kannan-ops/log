import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Pack extends StatefulWidget {
  const Pack({super.key});

  @override
  State<Pack> createState() => _PackState();
}

class _PackState extends State<Pack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        
        
            Container(
              height: 600,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.blueAccent,
                      ),
                    );
                  }
              ),
            ),
        
        
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  itemBuilder: (BuildContext,index)
                      {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: 150,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Text("data")
                          ],
                        );
                      }
              ),
            ),
        
        
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 15,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
               return Container(
                 height: 100,
                  width: 300,
                  color: Colors.red,
                  child: Text(itemIndex.toString()),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}

