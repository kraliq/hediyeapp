import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SinglePostScreen extends StatelessWidget {
  final int postId;

  SinglePostScreen({Key? key, required this.postId}) : super(key: key);

  Future<Map<String, dynamic>> fetchPostData() async {
    var url = Uri.parse('https://api.example.com/posts/$postId');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchPostData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            var postData = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: [
                  // Burada postData kullanarak dinamik widget'lar oluşturun
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
