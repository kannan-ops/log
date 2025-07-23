import 'dart:ui';

import 'package:flutter/material.dart';

import 'navi.dart';

class green extends StatefulWidget {
  const green({super.key});

  @override
  State<green> createState() => _greenState();
}

class _greenState extends State<green> {

  final the=GlobalKey<FormState>();

  bool there =false;

  TextEditingController ctrl1=TextEditingController();
  TextEditingController ctrl2=TextEditingController();
  TextEditingController ctrl3=TextEditingController();
  TextEditingController ctrl4=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key: the,
        child:
        Container(
          height: double.infinity,
          width:double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/tree.png"),
            fit: BoxFit.fill)

          ),
          child:
          Column(
            children: [SizedBox(height: 120,),
              Container(
                height: 450,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage("assets/lee.png"),
                  fit: BoxFit.fill)
                ),

                child:
                    ClipRRect(
                      child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2,


                      ),
                      child: Column(
                        children: [SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: ctrl1,
                              decoration: InputDecoration(
                                  icon: Icon(Icons.image_aspect_ratio_outlined),
                                  hintText: "enter the name",
                                  border: OutlineInputBorder()
                              ),
                              validator: (input){
                                if(input == null || input.isEmpty)
                                {
                                  return "enter valid name";
                                }
                                return null;
                              },
                              onChanged: (j){

                                setState(() {
                                  ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty && ctrl3.text.isNotEmpty && ctrl4.text.isNotEmpty ? there=true: there=false;
                                });
                              },

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: ctrl2,
                              decoration: InputDecoration(
                                icon: Icon(Icons.image_aspect_ratio_sharp),
                                hintText: "enter the phone number",
                                border: OutlineInputBorder()
                              ),
                              validator:(input){
                                if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))

                                  {
                                    return "enter valid phone number";
                                  }
                                return null;
                              } ,
                              onChanged: (p){
                                setState(() {
                                  ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty && ctrl3.text.isNotEmpty && ctrl4.text.isNotEmpty ? there=true: there=false;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: ctrl3,
                              decoration: InputDecoration(
                                icon: Icon(Icons.image_aspect_ratio_outlined),
                                hintText: "enter the e-mail",
                                border: OutlineInputBorder()
                              ),
                              validator: (input){
                                if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!))
                                  {
                                    return "enter valid e-mail";
                                  }
                                return null;
                              },
                              onChanged: (h){
                                ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty && ctrl3.text.isNotEmpty && ctrl4.text.isNotEmpty ? there=true: there=false;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: ctrl4,
                              decoration: InputDecoration(
                                icon: Icon(Icons.image_not_supported),
                                hintText: "enter the password",
                                border: OutlineInputBorder()
                              ),
                              validator: (input){
                                if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$').hasMatch(input!))
                                  {
                                    return "enter valid password";
                                  }
                                return null;
                              },
                              onChanged: (i){
                                setState(() {
                                  ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty && ctrl3.text.isNotEmpty && ctrl4.text.isNotEmpty ? there=true:there=false;
                                });
                              },
                            ),
                          ),
                          Visibility(
                            visible:there,
                            child:
                            ElevatedButton(onPressed: (){
                              if (the.currentState!.validate()) {

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("OK SUCCESS",
                                      style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold,),),));{
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>navi(

                                          )));
                                }
                              }


                            }, child:Text("login")),
                          )
                        ],
                      ) ),
                    )




                ),
            ],
          )
            ),

      )
    );
  }
  
}





