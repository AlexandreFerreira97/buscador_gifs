import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String _search;
  int _ofset = 0;

Future<Map> _getGifs() async {
    http.Response response;

    if(_search == null)
    {
      response = await http.get('https://api.giphy.com/v1/gifs/trending?api_key=CnDnxKe3FkrtnwBqjuxsD2b6vJ05xhAc&limit=20&offset=0&rating=g&bundle=messaging_non_clips' as Uri);
    }else{
      response = await http.get('https://api.giphy.com/v1/gifs/search?api_key=CnDnxKe3FkrtnwBqjuxsD2b6vJ05xhAc&q=$_search&limit=25&offset=$_ofset&rating=g&lang=en&bundle=messaging_non_clips' as Uri);
    }
    return json.decode(response.body);
  }

  @override
  void initState(){
    super.initState();

    _getGifs().then((map) {
      print(map);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
