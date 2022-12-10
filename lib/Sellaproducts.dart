import 'package:flutter/material.dart';
import 'package:lfj/Buy.dart';
import 'package:lfj/Hire%20a%20servant.dart';
import 'package:lfj/apply%20for%20a%20job.dart';
import 'package:lfj/main.dart';
import 'package:lfj/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';


class SellProducts extends StatelessWidget {















  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar: AppBar(
        title:Text('Sell Products',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,
        backgroundColor:Color(0xffe2efbb) ,


      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Center(
          child:   Container(
            height: 300,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [

                Container(

                  child:

                  Text('To sell your Product,Contact us on:',style:TextStyle(
                    fontWeight:FontWeight.bold,

                    fontSize:18,
                  ) ,) ,



                ),
                SizedBox(
                  height: 10,


                ),
                Text('Please send picture for your product and details for it',style:TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),

                SizedBox(
                  height:20 ,

                ),
                MaterialButton(onPressed: () async{
                 launchUrlString("mailto:techno.mobilecom42022@gmail.com?subject=selling a product"



                 );

                },






                  color:Color(0xffcd6f18) ,


                  child: Text("Send Email",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,



                  ),
                  ),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),


                ) ,




              ],





            ),
          ),
        ),


      ),




    );
  }
}


