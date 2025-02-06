import 'package:belajar_api_flutter/post_model.dart';
// import 'package:belajar_api_flutter/posts.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Post'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('${post.id}', style: const TextStyle(color: Colors.white),)
                )),
              Card(
                color: Colors.blue[700],
                child: ListTile(
                  title: const Text('Title', style: TextStyle(color: Colors.white),),
                  subtitle: Text(post.title,
                      style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.blue[700],
                  child: ListTile(  
                title: const Text("Body", style: TextStyle(color: Colors.white),),
                subtitle: Text(post.body, style: const TextStyle(color: Colors.white),),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
