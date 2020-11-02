
import 'package:flutter/material.dart';
import '../widgets/vertical_list.dart';
import '../widgets/horizontal_list_series.dart';
import '../widgets/horizontal_list_film.dart';



class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
              )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Films',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            HorizontalListFilm(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Serie TV',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            HorizontalListSeries(),
            SizedBox(height: 30),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Text(
            //         'Populaire',
            //         style: TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.bold
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // HorizontalListFilm(),
            // Container(
            //   height: 500,
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: ListView(
            //     physics: NeverScrollableScrollPhysics(),
            //     children: <Widget>[
            //       VerticalListItem(),
            //       VerticalListItem(),
            //       VerticalListItem(),
            //     ],
            //   ),
            // ),
          ],
        ),
      )
    );
  }
}

