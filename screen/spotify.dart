import 'package:flutter/material.dart';
import 'package:login/gtpage.dart';


class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: 
      NestedScrollView(
          headerSliverBuilder: (BuildContext,bool)
          {
            return [
              SliverAppBar(
                automaticallyImplyLeading: true,
                floating:false ,
                snap:false ,
                pinned: true,
                leading: Icon(Icons.arrow_back),
                backgroundColor:Colors.brown,
                expandedHeight: 430,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("Yuvan Night Drugs ",style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                  centerTitle: true,
                  background: Column(
                    children: [

                     Row(
                       children: [SizedBox(width: 50,),
                         SizedBox(
                           width: 200,
                           child: TextFormField(
                               decoration: InputDecoration(
                                   prefixIcon: Icon(Icons.search_rounded),
                                   hintText: "Find is playlist",
                                   border: OutlineInputBorder()
                               ),
                             ),
                         ),
                         ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.brown
                             )
                             , child:Text("sort",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))
                       ],
                     ),
                      Row(
                        children: [
                         Container(
                           height: 300,
                           width: 350,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/yuvan4.png"))
                           ),
                         )
                          
                        ],
                      ),
                      Row(
                        children: [
                          Text("Yuvan drugs,yuvan sad songs,Best of Yuvan,Yuvan Hits,"),
                          
                        ],
                      ),
                      Row(
                        children: [
                          Text("Yuvan Sankar Raja")
                        ],
                      )

                     
                      

                    ],
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.greenAccent,
                child:
                Row(
                  children: [
                    Icon(Icons.movie_filter_outlined),
                    SizedBox(width:40,child: Icon(Icons.add_circle_outline)),
                    SizedBox(width:40,child: Icon(Icons.arrow_circle_down_sharp)),
                    SizedBox(width:40,child: Icon(Icons.more_vert)),
                    SizedBox(width:180,child: Icon(Icons.stars_rounded)),
                    Icon(Icons.video_library_sharp)

                  ],
                ),
              ),
              Expanded(child:
              Container(
                color: Colors.black87,
                child: 
                ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: lis.length,
                    itemBuilder: (BuildContext,index){
                    return Card(
                      color: Colors.brown,
                      child: ListTile(
                       title: Text(lis[index].text),
                        subtitle: Text(lis[index].text2),
                        trailing: Icon(Icons.more_vert),
                        leading: Image.asset(lis[index].image),

                        ),


                    );
                    })
              ))


  ]

      ),


      // CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       pinned: false,
      //       snap: true,
      //       floating: true,
      //       expandedHeight: 160.0,
      //       flexibleSpace: const FlexibleSpaceBar(
      //         title: Text("yuvan night drugs",style: TextStyle(color: Colors.black87,fontSize: 20,),),
      //         background: Image(image: AssetImage("ASSETS/YUVAN.PNG"),),
      //       ),
      //
      //
      //     ),
      //     SliverList(
      //         delegate: SliverChildBuilderDelegate((BuildContext context,int )
      //         {
      //           return Container(
      //             color: index.isodd ? Colors.white: Colors.black,
      //             height: 100.0,
      //             child: Text('$index',textScaler: const
      //                 TextScaler.linear(5)
      //             )
      //           )
      //
      //         }))
      //   ],
      // ),
    ));
  }
}


class Model
{
  String? image;
  String? text;
  String? text2;

  Model(this.image,this.text,this.text2);
}

List lis = data.map((e)=>Model(e["image"], e["text"], e["text2"])).toList();

var data= [

  {"image":"assets/yuvan.png","text":"Thathi Thathi","text2":"Ranjith Govind"},
  {"image":"assets/dhanush.png","text":"Oru Naalil","text2":"Yuvan shankar Raja"},
  {"image":"assets/water.png","text":"pogathe","text2":"Yuvan Shankar Raja"},
  {"image":"assets/tree.png","text":"kaadhal Vaithu","text2":"vijay Yesudas"},
  {"image":"assets/yuvan.png","text":"loosu Pennae","text2":"silambarasan TR,Blaaze"},
  {"image":"assets/dhanush.png","text":"yedho ondru Ennai","text2":"Yuvan shankar Raja"},
  {"image":"assets/dhanush.png","text":"venmegam pennaga","text2":"Yuvan shankar Raja"},
  {"image":"assets/surya.png","text":"vizhli moodi ","text2":"Yuvan shankar Raja"},
  {"image":"assets/ajith.png","text":"mankatha theme ","text2":"Yuvan shankar Raja"},
  {"image":"assets/ajith.png","text":"ambani para para ","text2":"Yuvan shankar Raja"},

];
