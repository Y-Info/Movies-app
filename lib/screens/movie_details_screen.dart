import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const routeName = '/movies-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final imageUrl = routeArgs['imageUrl'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Titre',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '117 min',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ]
            ),
            SizedBox(height: 20),
            Text('ewdwmedew dwelkdnkewlndklwend we dwekmdwekc sfdnekwf wd'
                'wedklwmdewkdmwed'
                'wedewdmlwedlwedmwledmwel;dmwed'
                'edwed,wemdlewmd;ewmdwd;wme w mle'
                'ewkwm   wer jewmr mwem w,e we, wer',
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}