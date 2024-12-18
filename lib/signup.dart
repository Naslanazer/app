import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Center(
        child: Container(
          height: 500,width: 450,
          child: Column(
            children: [
              Text('Signup'),
              SizedBox(height: 30,),
              TextFormField(
                 decoration: InputDecoration(
                  labelText: 'username',
                  border: OutlineInputBorder(),
                ),
                
              ),
              SizedBox(height: 30,),
                 TextFormField(
                 decoration: InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ), 
              ),
              SizedBox(height: 30,),
                 TextFormField(
                 decoration: InputDecoration(
                  labelText: 'phone',
                  border: OutlineInputBorder(),
                ), 
              ),
              SizedBox(height: 30,),
                 TextFormField(
                 decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ), 
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){}, child: Text('Next')),
              
            ] 
          ),
        ),
      ),
    );
  }
}