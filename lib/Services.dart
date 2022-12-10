import 'package:flutter/material.dart';
import 'package:lfj/Hire%20a%20servant.dart';
import 'package:lfj/apply for a job.dart';
import 'package:lfj/Buy.dart';
import 'package:lfj/Hire a servant.dart';
import 'package:lfj/LearnHandCrafts.dart';
import 'package:lfj/Sellaproducts.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor:Color(0xffe2efbb),


      appBar: AppBar(
        title:Text('Services',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,
        backgroundColor:Color(0xffe2efbb),

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Container(
          width: double.infinity,

          child: Column(
            children: [
              Image(image: AssetImage('images/Services.jpeg'),),
              SizedBox(

                height:20 ,
              ),
              Row(
                children: [

                  MaterialButton(onPressed: (){
                    Navigator.push(

                      context,
                      MaterialPageRoute(builder: (context)=>LearnHandCraft(),),

                    );





                  },
                    color: Color(0xffcd6f18),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),



                    ),


                    child:
                    Text("Learn Handcrafts",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,


                    ),



                    ),
                  ),
                  SizedBox(
                    width:55 ,

                  ),
                  MaterialButton(onPressed: (){
                    Navigator.push(

                      context,
                      MaterialPageRoute(builder: (context)=>Buyproducts(),),

                    );





                  },
                    color: Color(0xffcd6f18),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),



                    ),


                    child:
                    Text("Buy  Products",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,


                    ),



                    ),
                  ),

                ],


              ),

              SizedBox(
                height: 25,


              ),
              Row(
                children: [

                  MaterialButton(onPressed: (){
                    Navigator.push(

                      context,
                      MaterialPageRoute(builder: (context)=>Applyforajob(),),

                    );





                  },
                    color: Color(0xffcd6f18),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),



                    ),


                    child:
                    Text("Apply for a Job",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,


                    ),



                    ),
                  ),
                  SizedBox(
                    width:57 ,

                  ),
                  MaterialButton(onPressed: (){
                    Navigator.push(

                      context,
                      MaterialPageRoute(builder: (context)=>SellProducts(),),

                    );





                  },
                    color: Color(0xffcd6f18),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),



                    ),


                    child:
                    Text("Sell  Products",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,


                    ),



                    ),
                  ),






                ],






              ),


              SizedBox(
                height: 40,



              ),
              MaterialButton(onPressed: (){
                Navigator.push(

                  context,
                  MaterialPageRoute(builder: (context)=>HireServant(),),

                );





              },
                color: Color(0xffcd6f18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)



                ),






                child:
                Text("Hire a Servant",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,


                ),



                ),
              ),






            ],




          ),
        ),
      ),







    );

  }
}
