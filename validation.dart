import 'dart:ui';
import 'package:flutter/material.dart';
import 'Signin.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {


  final ghoost = GlobalKey<FormState>();
  bool the = false;
  bool sev=true;
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController ctrl3=TextEditingController();
  cop(){
    setState(() {
      ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty ? the = true : the = false;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              // image: DecorationImage(image: NetworkImage("https://i.postimg.cc/v8kG3xTg/sk10.png"))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 400, width: 300,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                      image: DecorationImage
                        (image: NetworkImage("https://i.postimg.cc/Fzq0SL6j/sk7.png"), fit: BoxFit.fill),

                    ),
                    child: ClipRRect(

                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                            child: Form(
                                key: ghoost,
                                child: Column(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          controller: ctrl1,
                                          onChanged: (i){
                                            cop();
                                          } ,
                                          validator: (input){
                                            if(!RegExp(r'^[a-zA-Z0-9_]{3,16}$').hasMatch(input!))
                                            {
                                              return "PLs enter valid username";

                                            }
                                            return null;
                                          },
                                          decoration:InputDecoration(
                                            prefixIcon: Icon(Icons.mail,color: Colors.black,),
                                            hintText: ("enter your username"),
                                            hintStyle: TextStyle(color: Colors.black),
                                            border: OutlineInputBorder(),
                                          ),
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          controller: ctrl2,
                                          onChanged: (i){
                                            cop();
                                          },
                                          validator: (input){
                                            if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(input!))
                                            {
                                              return "please enter valid password";
                                            }
                                            return null;
                                          },
                                          obscureText: !sev,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.password,color: Colors.black,),
                                            suffixIcon: IconButton(onPressed: (){setState(() {
                                              sev=!sev;
                                            });
                                            },icon: Icon(sev? Icons.visibility: Icons.visibility_off),color: Colors.black,),
                                            hintText: "enter password",
                                            hintStyle: TextStyle(
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),

                                      TextFormField(
                                        controller: ctrl3,
                                        onChanged: (i){
                                          cop();
                                        } ,
                                        validator: (input){
                                          if(!RegExp(r'^(?:\+91[\-\s]?)?[6-9]\d{9}$').hasMatch(input!))
                                          {
                                            return " enter valid number";

                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.numbers),
                                            hintText: "enter mobile number",
                                            hintStyle: TextStyle(color: Colors.black87),
                                            border:OutlineInputBorder()
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(onPressed: (){
                                          if(ghoost.currentState!.validate()){

                                          }
                                        },style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.redAccent[100],), child: Text("LOGIN",style: TextStyle(
                                            color: Colors.pinkAccent,fontWeight: FontWeight.bold),) ),
                                      ),

                                    ]
                                )
                            )
                        )
                    )
                ),
              ],
            )

        )
    );
  }


}