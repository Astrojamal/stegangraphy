import 'package:flutter/material.dart';



// ignore: use_key_in_widget_constructors
class Registry extends StatefulWidget {
  @override
  _RegistryState createState() => _RegistryState();
}

class _RegistryState extends State<Registry> {


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SafeArea(
        child: Scaffold( backgroundColor:Colors.white,
          appBar: AppBar( backgroundColor: Colors.transparent,
            elevation: 0,),

          body: ListView(
              padding:const EdgeInsets.only(right: 40,left: 30) ,


                children: [ Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const  Text("HI   User  ",style: TextStyle(fontSize: 25,color: Colors.red,fontFamily:'Monoton' ),),
                    const  Text("Login ",style: TextStyle(fontSize: 25,color: Colors.indigo,fontFamily:'Monoton' ),),
                    const  SizedBox(
                      height: 30.0,
                    ),

                    TextFormField( decoration:const InputDecoration(labelText:" Enter Email",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.indigo, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.indigo, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                        validator: (String? value){
                          if(value!.isNotEmpty || RegExp(r'^[\w -\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)){
                            return "Enter Correct Email";
                          }else {   return null;  }
                        }),
                    const      SizedBox(
                      height: 24.0,
                    ),


                    TextFormField(
                        obscureText: true,
                        decoration:const InputDecoration(labelText:" Enter Password",contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),

                        ),
                        validator: (String? value){
                          if(value!.isNotEmpty || RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9][a-z A-Z]+$').hasMatch(value)){
                            return "Enter Correct Paswsword";
                          }else {   return null;  }
                        }
                    ),



                    const SizedBox(height: 30),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [ Text(" Sign up ",style: TextStyle(color: Colors.indigo,fontSize: 20),),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Material(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            elevation: 5.0,
                            child: MaterialButton(
                              onPressed: null,
                              minWidth: 90.0,
                              height: 42.0,
                              child: Text(
                                'LOG   IN',style: TextStyle(
                                  fontFamily:'Monoton',color: Colors.white
                              ),
                              ),
                            ),
                          ),
                        )
                      ],)
                  ],),
              ]),),

      ),

    );
  }
}
