import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mevivu/blog_detail.dart';
import 'package:mevivu/model/post.dart';
import 'package:mevivu/widget/navigation_drawer.dart';
import 'package:http/http.dart' as http;

class ListBlog extends StatefulWidget {
  const ListBlog({super.key});

  @override
  State<ListBlog> createState() => _ListBlogState();
}

class _ListBlogState extends State<ListBlog> {
  List<Post> posts = [];

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      setState(() {
        posts = data.map((item) => Post.fromJson(item)).toList();
      });
    } else {
      throw Exception('Failed to load posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavigationDrawerCustom(),
      body: posts.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlogDetail(post: post),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
    );
  }
}
