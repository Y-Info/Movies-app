library movies.globals;
import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiKey =  DotEnv().env['API_KEY'];
String apiBaseUrl = 'https://api.themoviedb.org/3/';
String imageBaseUrl = 'https://image.tmdb.org/t/p/w1280/';