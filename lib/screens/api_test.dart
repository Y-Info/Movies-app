import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  @override
  ApiPageState createState() => new ApiPageState();
}

class ApiPageState extends State<ApiPage> {
  List data;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(
            'https://api.themoviedb.org/3/discover/movie?api_key=440d3555391bf8ebbceae19005baea22&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1'),
        headers: {"Accept": "Application/json"});

      return response.body;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            data = jsonDecode(snapshot.data)['results'];
            print(data.length);
            const baseUrl = 'https://image.tmdb.org/t/p/w300_and_h450_bestv2';
            return ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child:
                  Image.network(
                    baseUrl + data[index]["poster_path"],
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }
          else{
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
