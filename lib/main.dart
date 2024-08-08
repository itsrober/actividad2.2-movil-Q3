import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class GaleriaFotos extends StatefulWidget {
  @override
  _GaleriaFotosState createState() => _GaleriaFotosState();
}

class _GaleriaFotosState extends State<GaleriaFotos> {
  List<dynamic> photos = [];

  @override
  void initState() {
    super.initState();
    fetchPhotos();
  }

  Future<void> fetchPhotos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      setState(() {
        photos = json.decode(response.body);
      });
    } else {
      throw Exception('Se callo el sistema');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria Rivera'),
      ),
      body: photos.isEmpty
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 5,
              ),
              itemCount: photos.length,
              itemBuilder: (context, index) {
                return Image.network(photos[index]['thumbnailUrl']);
              },
            ),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos a La Galeria Rivera',
      home: GaleriaFotos(),
    );
  }
}
