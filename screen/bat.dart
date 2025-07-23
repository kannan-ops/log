import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';


class bat extends StatefulWidget {
  const bat({super.key});

  @override
  State<bat> createState() => _batState();
}

const List<String> list = <String>['Quanity;1', '2', '3', '4'];
class _batState extends State<bat> {

  String dropdownValue = list.first;



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:
      AppBar(
        title: TextFormField(
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
          color: Colors.black12
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text("SG Maxstar classic premium English willow cricket bat-"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("short Handle,Adult size"),
                    ],
                  ),
                ],
              ),
             CarouselSlider.builder(
                 options: CarouselOptions(
                   height: 200,
                   aspectRatio: 16/9,
                   viewportFraction: 1,
                   initialPage: 0,
                   enableInfiniteScroll: true,
                   reverse: false,
                   autoPlay:false,
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
                         image: DecorationImage(image: AssetImage("assets/cricketbat.png"),
                             fit: BoxFit.fill)
                     ),
                     child: Text(itemindex.toString()),
          
                   );
                 }
          
             ),
              Center(
                child:Row(
                  children: [SizedBox(width: 100,),
                    DotsIndicator(dotsCount: 6,),
                SizedBox(width:50,),
                Icon(Icons.favorite),
                Icon(Icons.share)
                      
          
          
                  ],
          
             )
              ),
              Container(
                height: 130,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: 
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/primes.png"))
                            ),
                          ),
                        ),SizedBox(height: 100,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("Enjoy"),
                                Text("Unlimited FREE same day/1-Day",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
          
                              ],
                            ),
                            Row(
                              children: [
                                Text("deleivery,",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("prime offers everyday and")
                              ],
                            ),
                            Row(
                              children: [SizedBox(width: 0,),
                                Text("more")
                              ],
                            ),
                            Row(
                              children: [
                                Text("join prime shopping Edition at ",style: TextStyle(color: Colors.blue),),
                                Text("₹499",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold,),),
                                
                              ],
                            ),
                            Row(
                              children: [
                                Text("₹399/year >>",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
          
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                                text: "-19%",style:
                          TextStyle(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight:
                              FontWeight.bold),
          
                                ),
                          TextSpan(
                            text:"₹10,999",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold)
                          ),
          
                        ]
                        ),
          
          
          
                       ),
                  )
          
                ],
              ),
             Row(
               children: [
                 RichText(text:TextSpan(
                   children: <TextSpan>[
                     TextSpan(
                       text: "MRP;₹13499",
                       style: TextStyle(decoration: TextDecoration.lineThrough)
                     )
          
                   ]
                 ))
               ],
             ),
              Row(
                children: [
                  Column(
                    children: [
                      Text("EMI",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("from ₹533.No cost EMI available."),
                      Text("see all EMI",style: TextStyle(color: Colors.blue,),)
                    ],
                  ),
          
                ],
              ),
              Column(
                children: [
                  Text("plans")
                ],
              ),
              Column(
                children: [
                Text("inclusive of all taxes")
              ],),
              Row(
                children: [
                  Text("FREE deleivery.",style: TextStyle(decoration: TextDecoration.underline),),
                  Text("Thursday,3 July.",style: TextStyle(color:Colors.black87,fontSize: 15,fontWeight: FontWeight.bold),),
                  Text("Details",style: TextStyle(color: Colors.blue,fontSize: 15,decoration: TextDecoration.underline),),
          
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("JULY",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                      Text("order with in 6 hrs 50 mins."),
                      Text("join prime",style: TextStyle(decoration: TextDecoration.underline),)
                    ],
                  )
                ],
              ),
              Column(
                children: [SizedBox(height: 50,),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Deleivering to Coimbatore 641008-Update"),


                    ],
                  ),
                  Row(
                    children: [
                      Text("location")
                    ],
                  )
                ],
              ),
              Column(
                children: [SizedBox(height: 50,),
                  Row(
                    children: [
                      Text("In stock",style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,

                  style: const TextStyle(color: Colors.deepPurple),

                  underline: Container(height: 2, color: Colors.deepPurpleAccent),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items:
                  list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(value: value, child: Text(value));
                  }).toList(),
                ),
              ),
              ElevatedButton(onPressed: (){

              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow
              ),



                  child:Text("Add to Cart",style: TextStyle(backgroundColor: Colors.yellow,color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),)),
              
              ElevatedButton(onPressed: (){

              }, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange
              ),
                  child: Text("Buy Now",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,fontWeight: FontWeight.bold),)),


          
          
          
            ],
          ),
        )


      ),

    );
  }
}
