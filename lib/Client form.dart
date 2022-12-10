import 'package:flutter/material.dart';
import 'package:lfj/Client%20form.dart';
import 'package:list_picker/list_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ClientForm extends StatelessWidget {

  final String value;

  ClientForm({
    required this.value
    }
  );

  final listPickerfield=ListPickerField(
    width:200 ,
    label:"Payment Method",
    items:const["Cash","Visa",],);
  TextEditingController Name= new TextEditingController();

  TextEditingController Number= new TextEditingController();

  TextEditingController Address= new TextEditingController();

  TextEditingController Age= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar: AppBar(
        title:Text('Buy a product',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ),
        ),
        backgroundColor:Color(0xffe2efbb),
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(15.0),
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children:[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child:
                    TextFormField(
                      controller: Name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        filled:true,
                        labelText: "Name",
                        fillColor: Color(0xffe2efbb) ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: TextFormField(
                      controller: Number,
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
                    height: 20,
                  ),
                  Container(
                    height :50,
                    child: TextFormField(
                      controller: Address,
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
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: TextFormField(
                      controller: Age,
                      keyboardType:TextInputType.number ,
                      decoration: InputDecoration(
                        filled:true,
                        fillColor: Color(0xffe2efbb) ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: "Age",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 60,
                      child: listPickerfield),
                  SizedBox(
                    height:20 ,
                  ),
                  MaterialButton(onPressed: (){
                    Map<String,dynamic> dataBase={
                      "field1 ":Name.text,
                      "field2 ":Number.text,
                      "field3 ":Address.text,
                      "field4 ":Age.text,
                      "field5 ":listPickerfield.value,
                      "field6":value

                    };
                    FirebaseFirestore.instance.collection("Buy products").add(dataBase);

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
                    child:Text('Buy',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ) ,
                  ),
                ]
            ),
          )
      ),
    );
  }
}
