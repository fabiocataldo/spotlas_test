import 'package:flutter/material.dart';
import 'package:spotlas_test/utils/post_widget/post_widget.dart';
import '../models/data_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Posts> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Feed",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder<Posts>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final posts = snapshot.data!.posts!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return PostWidget(post: posts[index]);
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
