import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isVolenteer = false;
  String? selectedSkill='se';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              
              width: 450,
              child: Column(children: [
                Text('Signup'),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isVolenteer,
                        onChanged: (val) {
                          setState(() {
                            isVolenteer = !isVolenteer;
                            selectedSkill=null;
                          });
                        }),
                    Text('volunteer')
                  ],
                ),
                if (isVolenteer)
                
                DropdownButtonFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Choose Skill'),
                    // value: selectedSkill,
                    items: [
                      DropdownMenuItem(child: Text('sel'),value: 'sel',),
                      DropdownMenuItem(child: Text('data'),value: 'data',),
                      DropdownMenuItem(child: Text('data1'),value: 'data1'),
                      DropdownMenuItem(child: Text('other'),value: 'other',),
          
                    ],
                    onChanged: (val) {
                      setState(() {
                         selectedSkill = val;
                      });
                     
                    }),
                     if(selectedSkill=='other'&&isVolenteer)
                SizedBox(
                  height: 30,
                ),
                // Text('register as a volunteer?'),
                if(selectedSkill=='other'&&isVolenteer)
                 TextFormField(
                  decoration: InputDecoration(
                    labelText: 'enter skill',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Signup')),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
