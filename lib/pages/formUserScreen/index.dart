import 'package:flutter/material.dart';
import 'package:github/models/User.dart';

class FormUser extends StatefulWidget {
  // final User contact;


  @override
  _FormUserState createState() => _FormUserState();
}

class _FormUserState extends State<FormUser> {
  // final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login user'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text(
              //   "Digite o usuário",
              //   style: TextStyle(
              //     fontSize: 16.0,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  // controller: _valueController,
                  
                  style: TextStyle(fontSize: 18.0, color: Colors.grey),
                  decoration: InputDecoration(
                    labelText: 'Usuário',
                    hintText: "Ex: oliveira-gabriel",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Logar")
                    ),
                  )],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
