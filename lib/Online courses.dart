import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:list_picker/list_picker.dart';




class online extends StatelessWidget {
  final listPickerfield=ListPickerField(



    width:200 ,

    label:"Courses",
    items:const["Care taking","Cooking","Housekeeping","Baby sitting","Making wallets","Making soap","Making carpet","Making basket"],


  );


  TextEditingController Name= new TextEditingController();


  TextEditingController Number = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar:AppBar(
        backgroundColor:Color(0xffe2efbb),
        title:Text('online courses',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,




      ) ,

      body:
      Stack(children: [

        Container(
          decoration:BoxDecoration(
              image:DecorationImage(
                fit: BoxFit.fill,

                image: AssetImage("images/onlinehandcrafts.jpg"),)


          ) ,



        ),
        Center(
          child:   Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Container(
                height: 45,
                width:200 ,
                child: TextFormField(
                  controller: Name,
                  keyboardType:TextInputType.name ,
                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Color(0xffe2efbb) ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Name",




                  ),



                ),
              ),
              SizedBox(
                height: 10,


              ),

              Container(
                height: 45,
                width: 200,
                child: TextFormField(
                  controller:Number ,
                  keyboardType:TextInputType.name ,
                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Color(0xffe2efbb) ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "Tele.No",




                  ),



                ),
              ),
              SizedBox(
                height: 10,


              ),

              Container(
                height: 60,
                child:
                listPickerfield
                ,),

              MaterialButton(onPressed: () {


                Map<String,dynamic> dataBase={
                  "field1 ":Name.text,
                  "field2 ":Number.text,
                  "field3 ":listPickerfield.value,




                };

                FirebaseFirestore.instance.collection("Online courses").add(dataBase);

                Name.clear();
                listPickerfield.empty;
                Number.clear();





              },
                color: Color(0xffcd6f18),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),



                ),





                child:
                Text("Submit",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,


                ),



                ),
              ),




            ],













          ),
        ),

      ],

      ),




    );
  }
}
