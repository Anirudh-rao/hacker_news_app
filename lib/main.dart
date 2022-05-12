import 'package:flutter/material.dart';
import 'src/article.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Hacker News'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        //The Below Code tells Flutter to map the article list into a standalone text widget
        children: _articles.map(_builtitem).toList(),
      ),
    );
  }

  Widget _builtitem(Article article) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: new Text(
          article.text,
          style: new TextStyle(fontSize: 20),
        ),
        children: <Widget>[
          Row(
            //Expands  to fill whatever contains it
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text("${article.commentsCount} comments"),
              new Text("${article.score} score"),
              new IconButton(
                  icon: new Icon(Icons.launch),
                  color: Colors.deepOrangeAccent,
                  onPressed: () async {
                    final FakeUrl = "https://${article.domain}";
                    //CanLaunch Being a Future , We Will use async await
                    //Await waits for URL to Launch and get verified
                    if (await canLaunch(FakeUrl)) {
                      launch(FakeUrl);
                    }
                  })
            ],
          ),
        ],
      ),
    );
  }
}
