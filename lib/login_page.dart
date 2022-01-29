import 'package:demo_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailControler = TextEditingController();
  bool isChecked = false;
  String selectedItem = "Option One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo App",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login Now",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: emailControler,
                decoration: InputDecoration(hintText: "Enter Email Id"),
                validator: (value) {
                  if (value!.isEmpty)
                    return 'Enter Email Id';
                  else
                    null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Password"),
                validator: (value) {
                  if (value!.isEmpty)
                    return 'Enter Password';
                  else
                    null;
                },
                obscureText: true,
              ),
              DropdownButton<String>(
                value: selectedItem,
                items: <String>['Option One', 'Option Two', 'Option Three'].map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedItem = value!;
                  });
                },
              ),
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      }),
                  Text("Remember me")
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //your code
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomePage(emailControler.text)));
                      }
                    },
                    child: Text("Login")),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
