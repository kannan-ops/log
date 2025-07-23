import 'package:flutter/material.dart';


class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Container(
           height: double.infinity,
           width: double.infinity,

           child: DefaultTabController(
             length: 3,
             child: NestedScrollView(headerSliverBuilder: (BuildContext,bool)
             {
               return [
                 SliverAppBar(
                   automaticallyImplyLeading: true,
                   floating: true,
                   snap: true,
                   pinned: true,
                   backgroundColor: Colors.black,
                   expandedHeight: 500,
                   flexibleSpace: FlexibleSpaceBar(
                     background: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               Icon(Icons.lock_open,color: Colors.white,),
                               Text("classic_kannan",style: TextStyle(color: Colors.white,fontSize: 20,
                                   fontWeight: FontWeight.bold),),
                               Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
                               SizedBox(width: 100,),
                               Icon(Icons.nine_k_plus_outlined,color: Colors.white,),
                               SizedBox(width: 20,),
                               Icon(Icons.more_horiz_sharp,color: Colors.white,)

                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Container(
                                       height: 90,
                                       width: 90,
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         image: DecorationImage(image: AssetImage("assets/ajith.png"),
                                         fit:BoxFit.fill)
                                       )),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                         Row(
                                           children: [
                                             Text("CLASSIC_KANNAN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Text("13",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
                                             SizedBox(width: 40,),
                                             Text("357",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                             SizedBox(width: 50,),
                                             Text("265",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                           ],
                                         ),
                                         Column(
                                           children: [
                                             Row(
                                               children: [
                                                 SizedBox(width: 20,),
                                                 Text("Post",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),
                                                 SizedBox(width: 20,),
                                                 Text("Followers",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                                 SizedBox(width: 30,),
                                                 Text("Following",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                                               ],
                                             )
                                           ],
                                         )
                                       ],
                                     ),
                                   )





                                 ],
                               )
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Text("Thala Rasigan",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),

                                 ],
                               ),
                               Column(
                                 children: [
                                   SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       Text("Cricket Lover",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                     ],
                                   )
                                 ],
                               ),
                               Column(
                                 children: [SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       Text("Mass Entry Sep 26",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                                     ],
                                   )
                                 ],
                               )

                             ],
                           ),
                         ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [SizedBox(height: 20,),
                              Row(
                                children: [SizedBox(height: 50,),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(child: Text("Following")),
                                  ),
                                  SizedBox(width: 25,),
                                 Container(
                                   height: 40,
                                   width: 100,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                     border: Border.all()
                                   ),
                                   child: Center(child: Text("Message")),
                                 ),
                                  SizedBox(width: 30,),
                                  ElevatedButton(onPressed: (){}, child:Icon(Icons.person_add)),
                                ],
                              )
                            ],
                          ),
                        ),
                         Container(
                           height: 100,
                           child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: 8,
                               itemBuilder:(BuildContext,index){
                                 return Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Container(
                                         height: 50,
                                         width: 50,
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           image: DecorationImage(image: AssetImage("assets/yuvan.png"),
                                           fit: BoxFit.fill)


                                         ),
                                       ),
                                     ),
                                     Text("Highlights",style: TextStyle(color: Colors.white,fontSize: 12),)
                                   ],
                                 );
                               }),

                         ),


                       ],

                     ),
                   ),
                   bottom: TabBar(tabs:
                       [
                       Tab(icon: Icon(Icons.grid_on),),
                       Tab(icon: Icon(Icons.ondemand_video),),
                       Tab(icon: Icon(Icons.person_pin_outlined),),

                       ]
                  ),

                 )

               ];

             },







                 body:
                 TabBarView(children:[
                   Container(
                     height: 200,
                     child: GridView.builder(
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 3),
                         itemCount: img.length,
                         itemBuilder:(BuildContext,index){
                           return Container(
                             height: 100,
                             width: 100,
                             decoration: BoxDecoration(
                               image: DecorationImage(image: AssetImage(img[index].image),
                               fit: BoxFit.fill)
                             ),
                           );

                         }
                   )
                   ),
                   Container(
                       height: 200,
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 3),
                           itemCount: video.length,
                           itemBuilder:(BuildContext,index){
                             return Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                   image: DecorationImage(image: AssetImage(video[index].image),
                                       fit: BoxFit.fill)
                               ),
                             );

                           }
                       )
                   ),
                   Container(
                       height: 200,
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 3),
                           itemCount: Tag.length,
                           itemBuilder:(BuildContext,index){
                             return Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                   image: DecorationImage(image: AssetImage(Tag[index].image),
                                       fit: BoxFit.fill)
                               ),
                             );

                           }
                       )
                   ),
                 ],


                 )),
           ),
         ),


    );

  }
}






class Model{
  String? image;



  Model(this.image,);


}

List img = post.map((e)=>Model(e["image"])).toList();

var post =[
  {"image":"assets/my.png"},



];




class int{
  String? image;



  int(this.image,);


}

List video = reel.map((e)=>int(e["image"])).toList();

var reel =[
  {"image":"assets/my.png"},
  {"image":"assets/my.png"},



];




class ask{
  String? image;



  ask(this.image,);


}

List Tag = like.map((e)=>ask(e["image"])).toList();

var like =[
  {"image":"assets/my.png"},
  {"image":"assets/my.png"},
  {"image":"assets/my.png"},



];

