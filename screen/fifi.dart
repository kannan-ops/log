import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  TextEditingController but = TextEditingController();

  String value1 ="",value2 ="",oper="";

  bool call = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Calculator",style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.settings_outlined,color: Colors.white,),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Form(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                child: TextFormField(
                  controller: but,
                  decoration: InputDecoration(
                    hintText: "select the button",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20,),
                Row(

                  children: [
                    SizedBox(width: 20,),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const Bmi()),
                        // );

                      },
                      child: Text("BMI", style: TextStyle(color: Colors.black, fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(18),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 15,),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Gst()));

                      },
                      child: Text("GST", style: TextStyle(color: Colors.black, fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(18),
                        backgroundColor: Colors.grey,
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value1 = "";
                          value2 = "";
                          oper = "";
                          call = false;
                          but.clear();
                        });
                      },
                      child: Text("AC", style: TextStyle(color: Colors.black, fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        backgroundColor: Colors.grey,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (but.text.isNotEmpty)
                          {
                            but.text = but.text.substring(0, but.text.length - 1);
                            if (call && value2.isNotEmpty)
                            {
                              value2 = value2.substring(0, value2.length - 1);
                            }
                            else if (!call && value1.isNotEmpty)
                            {
                              value1 = value1.substring(0, value1.length - 1);
                            }
                          }
                        });
                      },
                      child: Icon(Icons.backspace, color: Colors.black),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        backgroundColor: Colors.grey,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (call) {
                            if (value2.startsWith("-")) {
                              value2 = value2.substring(1);
                            }
                            else {
                              value2 = "-$value2";
                            }
                            but.text = value2;
                          }
                          else {
                            if (value1.startsWith("-")) {
                              value1 = value1.substring(1);
                            }
                            else {
                              value1 = "-$value1";
                            }
                            but.text = value1;
                          }
                        });
                      },
                      child: Text("+/-", style: TextStyle(color: Colors.black, fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        backgroundColor: Colors.grey,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          oper = "/";
                          but.text = "/";
                          call = true;
                        });
                      },
                      child: Text("/", style: TextStyle(color: Colors.black, fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ],
                ),


                SizedBox(height: 20,),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if(call){
                          value2 +="7";
                          but.text =value2;
                        }
                        else{
                          value1 +="7";
                          but.text =value1;
                        }
                      });
                    },
                        child:Text("7",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if(call){
                          value2 +="8";
                          but.text= value2;
                        }
                        else{
                          value1 +="8";
                          but.text = value1;
                        }
                      });
                    },
                        child:Text("8",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if(call){
                          value2 +="9";
                          but.text =value2;
                        }
                        else{
                          value1 +="9";
                          but.text =value1;
                        }
                      });
                    },
                        child:Text("9",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      but.text ="*";
                      oper = "*";
                      call=true;

                    },
                        child:Text("*",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if(call){
                          value2 +="4";
                          but.text=value2;
                        }
                        else{
                          value1 +="4";
                          but.text=value1;
                        }
                      });
                    },
                        child:Text("4",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if(call){
                          value2 +="5";
                          but.text=value2;
                        }
                        else{
                          value1 +="5";
                          but.text=value1;
                        }
                      });
                    },
                        child:Text("5",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if(call){
                          value2 +="6";
                          but.text=value2;
                        }
                        else{
                          value1 +="6";
                          but.text=value1;
                        }
                      });
                    },
                        child:Text("6",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      but.text = "-";
                      oper ="-";
                      call=true;
                    },
                        child:Text("-",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(onPressed: (){
                      setState(() {
                        if (call){
                          value2 += "1";
                          but.text = value2;
                        }
                        else{
                          value1 += "1";
                          but.text = value1;

                        };
                      });
                    },
                        child:Text("1",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      if(call){
                        value2 += "2";
                        but.text=value2;

                      }
                      else{
                        value1 +="2";
                        but.text =value1;

                      }
                    },
                        child:Text("2",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      if(call){
                        value2 += "3";
                        but.text=value2;

                      }else {
                        value1 += "3";
                        but.text = value2;
                      }
                    },
                        child:Text("3",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      but.text="+";
                      oper = "+";
                      call=true;
                    },
                        child:Text("+",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(onPressed: (){
                      oper="%";
                      but.text="%";
                      call=true;
                    },
                        child:Text("%",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(26),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      if (call){
                        value2 += "0";
                        but.text=value2;

                      }else{
                        value1 += "0";
                        but.text=value1;
                      }
                    },
                        child:Text("0",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      if(call){
                        value2 += ".";
                        but.text = value2;
                      }else{
                        value1 +=".";
                        but.text=value1;
                      }
                    },
                        child:Text(".",style: TextStyle(color: Colors.black,fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.grey,
                        )
                    ),

                    ElevatedButton(onPressed: (){
                      if (oper == "+"){
                        int a = int.parse(value1);
                        int b = int.parse(value2);
                        int res = a+b;
                        but.text = res.toString();
                      }
                      if(oper == "-"){
                        int a = int.parse(value1);
                        int b = int.parse(value2);
                        int res = a-b;
                        but.text = res.toString();
                      }
                      if(oper == "*"){
                        int a = int.parse(value1);
                        int b  = int.parse(value2);
                        int res = a*b;
                        but.text = res.toString();

                      }
                      if(oper == "/"){
                        double a = double.parse(value1);
                        double b  = double.parse(value2);
                        double res = a/b;
                        but.text = res.toString();

                      }
                      if(oper == "%"){
                        double a = double.parse(value1);
                        double res = (a/100);
                        but.text = res.toString();

                      }


                    },
                        child:Text("=",style: TextStyle(color: Colors.white70,fontSize: 20),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(25),
                          backgroundColor: Colors.black87,
                        )
                    ),

                  ],
                ),

              ],
            )

          ],
        )),
      ),
    );
  }
}