import 'package:find_it/FindHome.dart';
import 'package:find_it/Introduction.dart';
import 'package:flutter/material.dart';

class Profileeee extends StatefulWidget {
  const Profileeee({super.key});

  @override
  State<Profileeee> createState() => _ProfileeeeState();
}

class _ProfileeeeState extends State<Profileeee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,leading:IconButton(
        icon: Icon(Icons.arrow_back,size: 30, color: Colors.white),
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Homepage()),(c){
            return false;
          });
        },
      ),
       title: Text("Profile",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [SizedBox(height:20 ,),
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.settings),SizedBox(width: 12,),
                  Text("Settings",style: TextStyle(fontSize:20),),Divider(),
                ],
              ),
            ),
          ),SizedBox(height: 50,),
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.language),SizedBox(width: 12,),
                  Text("Language",style: TextStyle(fontSize:20),),Divider(),
                ],
              ),
            ),
          ),SizedBox(height: 50,),
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.policy),SizedBox(width: 12,),
                  Text("Privacy & policy",style: TextStyle(fontSize:20),),Divider(),
                ],
              ),
            ),
          ),SizedBox(height: 50,),
          InkWell(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Introduction()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.logout),SizedBox(width: 12,),
                  Text("Logout",style: TextStyle(fontSize:20),),Divider(),
                ],
              ),
            ),
          ),SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Terms & Conditions"),
          )
        ],
      ),
    );
  }
}
