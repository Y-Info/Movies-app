import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1593642532400-2682810df593?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3450&q=80'
                        )
                    )
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Titre',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: 240,
                        child: Text(
                            'This is the first part of the movie app UI tutorial in Flutter. Here youll learn about various flutter widgets like ListView with various configurations of it and other widgets like container, text, singleChildScrollView etc.ials on WordPress, React JS, React Native and Digital Marketing visit: http://www.pradipdebnath.com/blog/',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}