import 'package:flutter/material.dart';
import 'package:pouch/info.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController ageController = TextEditingController();
  // TextEditingController genderController = TextEditingController();
  // TextEditingController addressController = TextEditingController();

  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  //Data that will be displayed
  String value;
  //String age;
  // String gender = '';
  // String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, welcome'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Form(
                key: _globalKey,
                child: Column(
                  children: [
                    // formfield for name
                    TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter name' : null,
                      decoration: formDecoration.copyWith(
                        hintText: 'Name',
                      ),
                      onChanged: (text) {
                        value = text;
                      },
                    ),
                    SizedBox(height: 20),
                    //formfield for age
                    TextFormField(
                      //controller: ageController,
                      validator: (val) => val.isEmpty ? 'Enter Age' : null,
                      decoration: formDecoration.copyWith(
                        hintText: 'Age',
                      ),
                      onChanged: (age) {
                        age = age;
                      },
                    ),
                    SizedBox(height: 20),
                    // formfield for gender

                    TextFormField(
                      // controller: genderController,
                      validator: (val) => val.isEmpty ? 'Enter gemder' : null,
                      decoration: formDecoration.copyWith(
                        hintText: 'gender',
                      ),
                      onChanged: (val) {
                        // setState(() => gender = val);
                      },
                    ),
                    SizedBox(height: 20),
                    // formfield for address

                    TextFormField(
                      //controller: addressController,
                      validator: (val) => val.isEmpty ? 'Enter Age' : null,
                      decoration: formDecoration.copyWith(
                        hintText: 'address',
                      ),
                      onChanged: (val) {
                        //setState(() => address = val);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                        color: Colors.teal,
                        child: Text(
                          "Print info",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Info(value: value)));
                        })
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
