import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lfj/Services.dart';
import 'package:lfj/handCraft.dart';
import 'package:lfj/Online courses.dart';
class LearnHandCraft extends StatefulWidget {


  @override
  State<LearnHandCraft> createState() => _LearnHandCraftState();
}

class _LearnHandCraftState extends State<LearnHandCraft> {
  @override
  void initstate(){
    super.initState();


  }
  bool Isvisible= true;
  bool unvisible=false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar:AppBar(
        backgroundColor:Color(0xffe2efbb) ,
        title:Text('Learn Handcrafts',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,



      ) ,
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(



          children: [
            Visibility(
              visible:Isvisible ,


              child: Container


                (child:


              MaterialButton(onPressed: (){

                setState(()  {


              if(Isvisible=true){
              unvisible=true;
              Isvisible=false;


              }else{
              unvisible=false;
              Isvisible=true;


              }


              });
  },
                color: Color(0xffcd6f18),

              child:
                Text("Select",style: TextStyle(

                  color: Colors.white,
                  fontWeight: FontWeight.bold,


                ),),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

              ),
              ),
            ),








            SizedBox(

              height:20 ,
            ),
            Visibility(
              visible:unvisible ,

              child: Container(
                width: double.infinity,
                height: 50,
                child:


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 45,

                    ),



                    MaterialButton(


                        onPressed: (){
                          Navigator.push(

                            context,

                            MaterialPageRoute (builder:(context)=>Handcrafts(),),
                          );






                    },
                      color: Color(0xffcd6f18),
                      child:
                      Text("Handcrafts",style:
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,



                        ),




                      ),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),








              ),
                    ),
                    SizedBox(

                      width: 20,


                    ),



                    MaterialButton(


                      onPressed: (){
                        Navigator.push(

                          context,

                          MaterialPageRoute (builder:(context)=>online(),),
                        );





                      },
                      color: Color(0xffcd6f18),
                      child:
                      Text("Online handcrafts",style:
                      TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,



                      ),




                      ),
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),






                      ),

                    ),










                  ],




                ),
              ),
            ),


            SizedBox(

              height: 20,

            ),





















            Image(image: AssetImage("images/handcrafts.jpg"),








            ),

          ],











        ),
      ),




    );
  }
}







