import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yournews/constants.dart';
import 'package:yournews/services/service.dart';
import 'package:yournews/widgets/newstile.dart';
import 'package:yournews/widgets/shimmerwidget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  static const String id = 'Homepg';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _loading;
  List newslist;

  void allNews() async {
    News news = News();
    await news.getNews();
    newslist = news.listns;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loading = true;
    super.initState();
    allNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kprimary,
        title: Text("Your News"),
      ),
      body: SafeArea(
        child: _loading
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 16,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300],
                  highlightColor: Colors.grey[100],
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Shimmertile(),
                        Shimmertile(),
                        Shimmertile(),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                margin: EdgeInsets.only(top: 16),
                child: ListView.builder(
                  itemCount: newslist.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return NewsTile(
                      imgUrl: newslist[index].urlToImage ?? "",
                      title: newslist[index].title ?? "",
                      desc: newslist[index].description ?? "",
                      posturl: newslist[index].articleUrl ?? "",
                    );
                  },
                ),
              ),
      ),
    );
  }
}
