import 'package:flutter/material.dart';
import 'package:lfj/Services.dart';

class StartS extends StatelessWidget {
  const StartS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar:AppBar(
        backgroundColor:Color(0xffe2efbb) ,
      ) ,
      body:

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage('images/start.jpeg'),

              width: double.infinity,
              height: 250,
            ),
            SizedBox(
              height:50,

            ),

            Text("(Learn and Find your Job)",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,




            ),


            ),

            SizedBox(

              height: 50,

            ),





            MaterialButton(









              onPressed




                  : (){

                Navigator.push(


                  context,MaterialPageRoute(builder: (context)=>Services()),



                );



              },
              color: Color(0xffcd6f18),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),



              ),





              child:
              Text("Start",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,


              ),



              ),
            ),

          ],

        ),
      ),












    );
  }
}
