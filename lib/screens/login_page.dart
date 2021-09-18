
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changeButton=false;

  final _formKey = GlobalKey<FormState>(); 
  
  moveToHome(BuildContext context)async {
    if(_formKey.currentState!.validate()){

    
    setState(() {
      changeButton=true;
    });
          
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton=false;
   });
  }
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple.shade50,
      child:SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          height: 100,
          ),
          SizedBox(
          ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Username cannot be empty";
                }else{
                return null;
                } 
              } ,
              onChanged:(value){
              name = value; 
              setState(() {
                
              });
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
              validator: (value) {
                if (value!.isEmpty){
                  return"password cannot be empty";
                }
                else if (value.length<6){
                  return"Password should be of altleast 6 characters";
                }
                return null;
              },
             ) ,
              
            
              
            SizedBox(
            height: 40.0,
          ),
          Material(
            color: Colors.deepPurple,
                borderRadius: 
                    BorderRadius.circular(changeButton?50:8),
            child: InkWell(
              onTap:()=>moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1),
                height: 50,
                width: changeButton? 50 :150,
                alignment: Alignment.center, 
                child: changeButton
                ?Icon(
                  Icons.done,
                  color: Colors.white,
                  )
                :Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    ),
                ),
                  ),
               ),
          ),
            
              ]
              ),
          )
          ],
          ),
            
              ),
             ),
    );
        
  }
}


  
