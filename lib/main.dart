import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Jun 2', style: TextStyle(color: Colors.black54)),
              Text('London',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10),
                  Text('21°C',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 193, 36),
                          fontSize: 48,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Text('Overcast Clouds',
                  style: TextStyle(color: Colors.black54, fontSize: 18)),
              SizedBox(height: 18),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Today',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text('This Week',
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Text('Temperatures',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildWeatherInfo('8 PM', '21°C', Icons.cloud),
                  _buildWeatherInfo('11 PM', '22°C', Icons.cloud),
                ],
              ),
              SizedBox(height: 18),
              Text('Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildDetailInfo('Minimum', '21°C'),
                    _buildDetailInfo('Maximum', '22°C'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildDetailInfo('Pressure', '1020'),
                    _buildDetailInfo('Humidity', '41%'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherInfo(String time, String temp, IconData icon) {
    return Column(
      children: <Widget>[
        Text(time,
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 143, 151, 157))),
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(icon, color: Color.fromARGB(255, 0, 157, 255), size: 30),
            Icon(icon,
                color: Color.fromARGB(255, 152, 196, 216), size: 24),
          ],
        ),
        SizedBox(height: 5),
        Text(temp, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildDetailInfo(String title, String value) {
    return Column(
      children: <Widget>[
        Text(title,
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(221, 141, 135, 135))),
        SizedBox(height: 5),
        Text(value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
void main() => runApp(MyApp());