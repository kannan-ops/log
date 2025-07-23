import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title:
        TextFormField(
          decoration: InputDecoration(
              prefixIcon:  Icon(Icons.search_rounded),
            hintText: "Search Amazon.in",
            hintStyle: TextStyle(color: Colors.black),
            suffixIcon: SizedBox(
              width: 70,
              child: Row(
                children: [
                  Icon(Icons.camera_alt_outlined),
                  Icon(Icons.mic)
                ],
              ),
            ),

            border: OutlineInputBorder(

            ),





          ),
        ),
        actions: [
          Icon(Icons.document_scanner)
        ],


      ),
      body:

          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey
            ),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("Delivering to coimbatore 641008"),
                        Icon(Icons.keyboard_arrow_down_rounded)

                      ],
                    ),
                  ),


                      Container(
                        height: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder:(BuildContext,index){
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/amazon.png"))
                                      ),
                                    ),
                                  ),
                                  Text("OK")
                                ],
                              );
                            }),

                      ),
                  Text("prime day | Brands in focus",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 200,
                            aspectRatio: 16/9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay:true,
                            autoPlayInterval: Duration(seconds: 1),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal,
                          ),
                          itemCount: 1,
                          itemBuilder: (BuildContext context,int itemindex,int pageviewIndex){
                            return Container(
                              height: 100,
                              width:400,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/amazon.png"),
                                      fit: BoxFit.fill)
                              ),
                              child: Text(itemindex.toString()),

                            );
                          }


                      ),
                     Text("Get up to ₹ cashback Today|",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("#Crazy low price on bazaar",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                      
                      Container(
                        height: 800,
                        child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2
                            ),
                            itemCount: 8,
                            itemBuilder: (BuildContext,index)
                            {
                              return Column(
                                
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 150,
                                      width: 400,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/amazon.png"))
                                      ),

                                    ),
                                  ),
                                  Text("data",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              );
                            }
                        ),
                      )
                    ],
                  )




              ),
            ),

          

    );
  }
}
