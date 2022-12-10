import 'package:flutter/material.dart';
import 'package:lfj/Client form.dart';

class Buyproducts extends StatefulWidget {




  @override

  State<Buyproducts> createState() => _BuyproductsState();
}


class _BuyproductsState extends State<Buyproducts> {
  @override
  void initState(){

    super.initState();

  }



  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color(0xffe2efbb) ,

      appBar:AppBar(
        title:Text('Buy Hand Made Products',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,


        backgroundColor:Color(0xffe2efbb) ,



      ) ,
      body:
      Padding(
        padding: const EdgeInsets.all(5.0),
        child:

        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,

                child: Row(
                  children: [
                    Image(image:AssetImage("images/carpet.jpeg"),
                      width: 150,
                      height: 200,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Carpet",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff5e5343),),),
                          SizedBox(

                            height: 5,

                          ),
                          Text("price: 1500 L.E ",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5 ,


                          ),
                          Text("Size: 2 x 3 m",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5,



                          ),
                          MaterialButton(onPressed: (){

                            Navigator.push(

                              context,

                              MaterialPageRoute (builder:(context)=>ClientForm(value: "Carpet",),),
                            );



                          },
                            color: Color(0xff5e5343),


                            child:

                            Text("Buy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color:(Colors.white),
                            ),

                            ),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),



                            ),
                          ),                    ],



                      ),
                    ),






                  ],






                ),
              ),
              SizedBox(
                height: 1,


              ),
              Container(
                width: double.infinity,
                height: 200,

                child: Row(
                  children: [
                    Image(image:AssetImage("images/soap.jpeg"),
                      width: 150,
                      height: 200,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Soap",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffde6723),),),
                          SizedBox(

                            height: 5,

                          ),
                          Text("price: 15 L.E ",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5 ,


                          ),
                          Text("Weight: 200 gm",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5,



                          ),
                          MaterialButton(onPressed: (){

                            Navigator.push(

                              context,

                              MaterialPageRoute (builder:(context)=>ClientForm(value: "Soap",),),
                            );



                          },
                            color: Color(0xffde6723),


                            child:

                            Text("Buy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color:(Colors.white),
                            ),

                            ),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),



                            ),
                          ),                    ],



                      ),
                    ),






                  ],






                ),
              ),
              SizedBox(
                height: 5,


              ),
              Container(
                width: double.infinity,
                height: 200,

                child: Row(
                  children: [
                    Image(image:AssetImage("images/WALLET.jpg"),
                      width: 150,
                      height: 200,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Wallet",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffad5e44),),),
                          SizedBox(

                            height: 5,

                          ),
                          Text("price: 300 L.E ",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5 ,


                          ),
                          Text("Size: 10 x 15 cm",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5,



                          ),
                          MaterialButton(onPressed: (){

                            Navigator.push(

                              context,

                              MaterialPageRoute (builder:(context)=>ClientForm(value:"Wallet",),),
                            );



                          },
                            color: Color(0xffad5e44),


                            child:

                            Text("Buy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color:(Colors.white),
                            ),

                            ),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),



                            ),
                          ),                    ],



                      ),
                    ),






                  ],






                ),
              ),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                height: 200,

                child: Row(
                  children: [
                    Image(image:AssetImage("images/basketbasketbasketry.jpg"),
                      width: 150,
                      height: 200,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Basket",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff78614c),),),
                          SizedBox(

                            height: 5,

                          ),
                          Text("price: 100 L.E ",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5 ,


                          ),
                          Text("Size:Medium",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height:5,



                          ),
                          MaterialButton(onPressed: (){

                            Navigator.push(

                              context,

                              MaterialPageRoute (builder:(context)=>ClientForm(value: "Basket",),),
                            );



                          },
                            color: Color(0xff78614c),


                            child:

                            Text("Buy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color:(Colors.white),
                            ),

                            ),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),



                            ),
                          ),                    ],



                      ),
                    ),






                  ],






                ),
              ),
            ],
          ),
        ),
      ),
















    );
  }
}
