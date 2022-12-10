import 'package:flutter/material.dart';
import 'package:list_picker/list_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class HireServant extends StatelessWidget {
  final listPickerfield=ListPickerField(

    width:200 ,

    label:"Services",
    items:const["Care taker","Cooker","Housekeeper","Baby sitter",],);

  TextEditingController Name= new TextEditingController();

  TextEditingController Addess= new TextEditingController();

  TextEditingController Number = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar: AppBar(
        title:Text('Hire a Servant',style:TextStyle(
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
                  width:350 ,
                  height: 200,
                  image:AssetImage('images/servant.jpg')),
            ),



            Center(
              child:Column(
                children: [
                  SizedBox(
                    height: 10,


                  ),
                  Container(

                    height: 45,
                    child: TextFormField(
                      controller:Name ,
                      keyboardType:TextInputType.name ,
                      decoration: InputDecoration(
                        filled:true,
                        fillColor: Color(0xffe2efbb) ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: "Name",




                      ),



                    ),
                  ),
                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 45,
                    child: TextFormField(
                      controller:Addess ,
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
                    height:10 ,

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
                  Container(
                      height: 60,
                      child: listPickerfield),
                  SizedBox(

                    height:10 ,
                  ),
                  MaterialButton(onPressed: (){
                    Map<String,dynamic> dataBase={
                      "field1 ":Name.text,
                      "field2 ":Addess.text,
                      "field3 ":Number.text,
                      "field4 ":listPickerfield.value
                    };
                    FirebaseFirestore.instance.collection("Hire a Servant").add(dataBase);
                    Name.clear();
                    Addess.clear();
                    Number.clear();




                  },
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Color(0xffcd6f18),
                    child:Text('Hire',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,



                    ),) ,
                  ),


                ],



              ) ,









            ),
          ],



        ),
      ),





    );
  }
}
