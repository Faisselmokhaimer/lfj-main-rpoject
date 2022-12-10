import 'package:flutter/material.dart';


class Handcrafts extends StatefulWidget {



  @override
  State<Handcrafts> createState() => _HandcraftsState();
}

class _HandcraftsState extends State<Handcrafts> {
  @override

  void initState() {

    super.initState();
  }
  bool makeavisible=false;
  bool Isvisible=true;
  bool unvisible=false;
  bool Bvisible=false;
  bool svisible=false;
  bool cvisible=false;
  bool wvisible=false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffe2efbb) ,
      appBar:AppBar(
        backgroundColor:Color(0xffe2efbb) ,

        title:Text('Hand crafts',style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:30,
          color:Colors.brown,
        ) ,) ,



      ) ,

      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height:600,
            width: double.infinity,
            child:
               SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Visibility(
                      visible:Isvisible ,
                      child: Container(
                        width: double.infinity,
                        child:
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

                    Visibility(
                      visible: makeavisible,

                      child:Container(
                      child: MaterialButton(onPressed: (){
                        setState(() {

                          if(makeavisible=true){

                            unvisible=true;
                            makeavisible=false;
                            wvisible=false;
                            Bvisible=false;
                            cvisible=false;
                            svisible=false;


                          }else{

                            unvisible=false;
                            makeavisible=false;
                            wvisible=false;
                            Bvisible=false;
                            cvisible=false;
                            svisible=false;

                          }

                        });
                      },
                          color: Color(0xffcd6f18),

                        child:
                        Text("Make another selection",style: TextStyle(

                          color: Colors.white,
                          fontWeight: FontWeight.bold,


                        ),),
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),

                      ),



                    ),
                    ),

                    Visibility(
                      visible: unvisible,
                      child: Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,

                          child: Center(
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                MaterialButton(onPressed: (){

                                  setState(()  {
                                    if(unvisible=true){


                                      Bvisible=false;
                                  wvisible=true;
                                 unvisible=false;
                                 svisible=false;
                                cvisible=false;
                                makeavisible=true;
    }


                                    else {
                                      Bvisible = false;
                                      wvisible = false;
                                      unvisible = false;
                                      svisible = false;
                                      cvisible = false;
                                      makeavisible=false;
                                    }


     });
                                },
                                  color: Color(0xffcd6f18),

                                  child:
                                  Text("Wallet",style: TextStyle(

                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,


                                  ),),
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                ),

                                SizedBox(
                                  height: 25,

                                ),
                                MaterialButton(onPressed: (){

                                  setState(()  {
                                    if(unvisible=true){


                                      Bvisible=true;
                                      wvisible=false;
                                      unvisible=false;
                                      svisible=false;
                                      cvisible=false;
                                      makeavisible=true;
                                    }


                                    else {
                                      Bvisible = false;
                                      wvisible = false;
                                      unvisible = false;
                                      svisible = false;
                                      cvisible = false;
                                      makeavisible=false;
                                    }




                                  });
                                },
                                  color: Color(0xffcd6f18),

                                  child:
                                  Text("Basketry",style: TextStyle(

                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,


                                  ),),
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                ),
                                SizedBox(
                                  height: 25,

                                ),
                                MaterialButton(onPressed: (){

                                  setState(()  {
                                    if(unvisible=true){


                                      Bvisible=false;
                                      wvisible=false;
                                      unvisible=false;
                                      svisible=false;
                                      cvisible=true;
                                      makeavisible=true;
                                    }


                                    else {
                                      Bvisible = false;
                                      wvisible = false;
                                      unvisible = false;
                                      svisible = false;
                                      cvisible = false;
                                      makeavisible=false;
                                    }




                                  });
                                },
                                  color: Color(0xffcd6f18),

                                  child:
                                  Text("Carpet",style: TextStyle(

                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,


                                  ),),
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                ),
                                SizedBox(
                                  height: 25,

                                ),
                                MaterialButton(onPressed: (){

                                  setState(()  {
                                    if(unvisible=true){


                                      Bvisible=false;
                                      wvisible=false;
                                      unvisible=false;
                                      svisible=true;
                                      cvisible=false;
                                      makeavisible=true;
                                    }


                                    else {
                                      Bvisible = false;
                                      wvisible = false;
                                      unvisible = false;
                                      svisible = false;
                                      cvisible = false;
                                      makeavisible=false;
                                    }




                                  });
                                },
                                  color: Color(0xffcd6f18),

                                  child:
                                  Text("Soap",style: TextStyle(

                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,


                                  ),),
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),








                    SizedBox(
                      height: 10,




                    ),




                       Visibility(
                        visible:Bvisible ,
                        child: Column(
                         children: [
                           Image(image: AssetImage('images/Basket 1.jpeg'),),
                           Image(image: AssetImage('images/Basket 2.jpeg'),),
                           Image(image: AssetImage('images/Basket 3.jpeg'),),
                           Image(image: AssetImage('images/Basket 4.jpeg'),),
                           Image(image: AssetImage('images/Basket 5.jpeg'),),
                           Image(image: AssetImage('images/Basket 6.jpeg'),),
                           Image(image: AssetImage('images/Basket 7.jpeg'),),
                           Image(image: AssetImage('images/Basket 8.jpeg'),),
                           Image(image: AssetImage('images/Basket 9.jpeg'),),
                           Image(image: AssetImage('images/Basket 10.jpeg'),),
                           Image(image: AssetImage('images/Basket 11.jpeg'),),
                           Image(image: AssetImage('images/Basket 12.jpeg'),),
                         ],





                        ),
                      ),









                       Visibility(
                        visible: svisible,
                        child: Container(
                          child: Column(
                            children: [
                              Image(image: AssetImage('images/soap 1.jpeg'),),
                              Image(image: AssetImage('images/soap  2.jpeg'),),
                              Image(image: AssetImage('images/soap  3.jpeg'),),
                              Image(image: AssetImage('images/soap  4.jpeg'),),
                              Image(image: AssetImage('images/soap  5.jpeg'),),
                              Image(image: AssetImage('images/soap  6.jpeg'),),
                              Image(image: AssetImage('images/soap  7.jpeg'),),
                              Image(image: AssetImage('images/soap  8.jpeg'),),
                            ],





                          ),
                        ),
                      ),

                    Visibility(
                      visible: cvisible,

                      child: Container(
                        child: Column(
                          children: [
                            Image(image: AssetImage('images/carpet  2.jpeg'),),
                            Image(image: AssetImage('images/carpet  3.jpeg'),),
                            Image(image: AssetImage('images/carpet  4.jpeg'),),
                            Image(image: AssetImage('images/carpet  5.jpeg'),),
                            Image(image: AssetImage('images/carpet  6.jpeg'),),

                          ],





                        ),
                      ),
                    ),
                    Visibility(


                      visible: wvisible,
                      child: Container(
                        child: Column(
                          children: [
                            Image(image: AssetImage('images/Wallet 1.jpeg'),),
                            Image(image: AssetImage('images/Wallet 2.jpeg'),),
                            Image(image: AssetImage('images/Wallet 3.jpeg'),),
                            Image(image: AssetImage('images/Wallet 4.jpeg'),),
                            Image(image: AssetImage('images/Wallet 5.jpeg'),),
                            Image(image: AssetImage('images/Wallet 6.jpeg'),),
                            Image(image: AssetImage('images/Wallet 7.jpeg'),),
                            Image(image: AssetImage('images/Wallet 8.jpeg'),),
                            Image(image: AssetImage('images/Wallet 9.jpeg'),),
                            Image(image: AssetImage('images/Wallet 10.jpeg'),),
                            Image(image: AssetImage('images/Wallet 11.jpeg'),),

                          ],





                        ),
                      ),
                    ),




                  ],
                ),
              ),
            ),
          ),
        ),




    );
  }
}
