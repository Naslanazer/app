import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isVolenteer = false;
  String? selectedSkill = 'se';
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 450,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Signup'),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gender', style: TextStyle(fontSize: 16)),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                        Text('Male'),
                        Radio<String>(
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                        Text('Female'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(
                      value: isVolenteer,
                      onChanged: (val) {
                        setState(() {
                          isVolenteer = !isVolenteer;
                          selectedSkill = null;
                        });
                      },
                    ),
                    Text('Volunteer')
                  ],
                ),
                if (isVolenteer)
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Choose Skill',
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Text('sel'),
                        value: 'sel',
                      ),
                      DropdownMenuItem(
                        child: Text('data'),
                        value: 'data',
                      ),
                      DropdownMenuItem(
                        child: Text('data1'),
                        value: 'data1',
                      ),
                    ],
                    onChanged: (val) {
                      setState(() {
                        selectedSkill = val;
                      });
                    },
                  ),
                if (selectedSkill == 'other' && isVolenteer)
                  SizedBox(height: 30),
                if (selectedSkill == 'other' && isVolenteer)
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Skill',
                      border: OutlineInputBorder(),
                    ),
                  ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text('Signup')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
