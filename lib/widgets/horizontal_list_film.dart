import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

import '../screens/correction_detail.dart';

class HorizontalListFilm extends StatefulWidget {
  @override
  HorizontalListFilmState createState() => new HorizontalListFilmState();
}

class HorizontalListFilmState extends State<HorizontalListFilm> {
  List data;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(
            globals.apiBaseUrl+'discover/movie?api_key='+ globals.apiKey +'&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1'),
        headers: {"Accept": "Application/json"});
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          data = jsonDecode(snapshot.data)['results'];
          return Container(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 160,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        MovieDetail.routeName,
                        arguments: {
                          'id': index,
                          'title': data[index]["title"],
                          'imageUrl': globals.imageBaseUrl + data[index]["poster_path"],
                          'overview': data[index]["overview"],
                          'vote_average':
                              data[index]["vote_average"].toString(),
                          'release_date': data[index]["release_date"],
                        },
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    globals.imageBaseUrl + data[index]["poster_path"]))),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
