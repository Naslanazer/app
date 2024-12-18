import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 300,width: 200,
          child: Column(
            children: [
              Text('Login'),
              SizedBox(height: 30,),
              TextFormField(
                 decoration: InputDecoration(
                  labelText: 'Enter your username',
                  border: OutlineInputBorder(),
                ),
                
              ),
              SizedBox(height: 30,),
                 TextFormField(
                 decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ), 
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){}, child: Text('Login')),
              Text('Create an account'),
          
            ] 
          ),
        ),
      ),
    );
  }
}