
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';


class LoginPage extends StatelessWidget{
  String mail = "";
  String pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THE MOVIES APP"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            _buildTitle(),
            SizedBox(height: 30),
            _buildForm(context),
            SizedBox(height: 15),
            _buildImage(),
          ],
        ),
      ),
    );
  }

  // Fonction creation header page login
  Widget _buildImage(){
    return new Container(
      child: Image(
         image: AssetImage('assets/images/cinema.jpg')
      ),
    );
  }

  Widget _buildTitle(){
    return new Container(
      child: Text(
        "Connectez-vous !",
        style: TextStyle(fontSize: 28),
      ),
    );
  }

  Widget _buildForm(BuildContext context){

    return new Container(
      padding: EdgeInsets.all(15),
      child: new Column(
        children: <Widget>[
          new Container(
            child: TextFormField(
              onChanged: (newText) {mail = newText;},
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: "Email",
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          new Container(
            child: TextFormField(
              onChanged: (newText) {pass = newText;},
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: "Mots de passe",
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 35),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Container(
                child: RaisedButton(
                  child: Text(
                    "login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: (){
                    if( mail == "123" && pass == "123"){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardScreen())
                      );
                    }
                    else{
                      log("Erreur identifiant");
                    }
                  },
                ),
              ),
              new Container(
                child: FlatButton(
                  child: Text("Mots de passe oublie"),
                  color: Colors.white,
                  onPressed: (){
                    // To-do gerer le click
                  },
                ),
              )
            ],
          )
        ],
      )
    );
  }

}


