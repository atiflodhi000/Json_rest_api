import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:imusingrestapi/Models/model_json.dart';
import 'package:cached_network_image/cached_network_image.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ModelJson> postlist =[];
  Future<List<ModelJson>> getPostapi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      postlist.clear();
      for(Map i in data){
        postlist.add(ModelJson.fromJson(i));
      }
      return postlist;
    }else{
      return postlist;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rest Json API'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostapi(),
              builder: (context,snapshot){
                if(!snapshot.hasData){
                  return Text('Loading..');
                }else{
                  return ListView.builder(
                      itemCount: postlist.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          leading: CachedNetworkImage(
                            imageUrl: postlist[index].url.toString(),
                            placeholder: (context, url) {
                              print('Placeholder for image at $url');
                              return CircularProgressIndicator();
                            },
                            errorWidget: (context, url, error) {
                              print('Error loading image at $url\nError: $error');
                              return Icon(Icons.error);
                            },
                          ),
                          title: Text(postlist[index].title.toString()),
                        );
                      });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
