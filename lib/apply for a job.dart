
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:list_picker/list_picker.dart';

class Applyforajob extends StatelessWidget {

  final listPickerfield=ListPickerField(



    width:200 ,

    label:"Jobs",
    items:const["Care taker","Cooker","Housekeeper","Baby sitter",],


  );

TextEditingController Name= new TextEditingController();

TextEditingController Number= new TextEditingController();

TextEditingController Address= new TextEditingController();

TextEditingController Age= new TextEditingController();






  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar: AppBar(
        title:Text('Apply for a Job',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,
        backgroundColor:Color(0xffe2efbb) ,

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(






          children: [


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                width: 150,
                height:150,

                image: AssetImage('images/serva.jpg'),
              ),




            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fill the form",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffcd6f18),



                ),


                ),
              ],
            ),
            SizedBox(

              height:10,


            ),


            Container(
              height: 45,
              child:   TextFormField(
                controller:Name ,

                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Color(0xffe2efbb) ,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Name ",





                ),



              ),
            ),
            SizedBox(
              height: 10,


            ),
            Container(
              height: 45,
              child: TextFormField(
                controller:Number ,
                keyboardType:TextInputType.phone ,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Color(0xffe2efbb) ,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Tele.No",



                ),



              ),
            ),
            SizedBox(
              height: 10,


            ),
            Container(
              height :45,
              child: TextFormField(
                controller:Address ,

                keyboardType:TextInputType.streetAddress ,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Color(0xffe2efbb) ,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Address",




                ),



              ),
            ),
            SizedBox(
              height: 10,


            ),
            Container(
              height: 45,
              child: TextFormField(
                controller:Age ,
                keyboardType:TextInputType.number ,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Color(0xffe2efbb) ,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Age",




                ),



              ),
            ),


            Container(
                height: 60,
                child: listPickerfield

            ),
            SizedBox(
              height:5 ,
            ),

            MaterialButton(onPressed: (){

Map<String,dynamic> dataBase={
  "field1 ":Name.text,
  "field2 ":Number.text,
  "field3 ":Address.text,
  "field4 ":Age.text,
  "field5 ":listPickerfield.value
};
FirebaseFirestore.instance.collection("apply for a job").add(dataBase);
Name.clear();
Number.clear();
Address.clear();
Age.clear();
listPickerfield.empty;

            },
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color(0xffcd6f18),
              child:Text('Apply',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,



              ),) ,
            ),

          ],


        ),
      ),




    );
  }
}


