import 'package:http/http.dart' as http;
//import 'package:yournews/api.dart';
import 'dart:convert';

import 'package:yournews/model/apimodel.dart';

class News {
  List<Articles> listns = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=Technology&apiKey=apiKey"; //add $ so that we can use api key here

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Articles article = Articles(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(
                element['publishedAt']), //we are not using this now
            content: element["content"], //we are not using this now
            articleUrl: element["url"],
          );
          listns.add(article); //adding the objects to list called listns
        }
      });
    }
  }
}
