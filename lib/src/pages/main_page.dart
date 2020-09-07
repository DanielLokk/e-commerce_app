import 'package:ecommerceapp/src/themes/theme1.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget categories() {
    return Expanded(
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => new Stack(
          alignment: Alignment.topLeft,
          children: [
            new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      image: new NetworkImage(
                          'https://www.google.es/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png'),
                      fit: BoxFit.fill)),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SearchBar<Post>(
          searchBarStyle: SearchBarStyle(
            backgroundColor: Theme1.gray,
            padding: EdgeInsets.only(top: 0.75, left: 20),
            borderRadius: BorderRadius.circular(100),
          ),
          onSearch: search,
          onItemFound: (Post post, int index) {
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.description),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[categories()],
    ));
  }
}

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

Future<List<Post>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Post(
      "Title : $search $index",
      "Description :$search $index",
    );
  });
}
