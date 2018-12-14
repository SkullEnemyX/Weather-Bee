import 'package:flutter/material.dart';

void main()=>runApp(Weatherbee());

class Weatherbee extends StatefulWidget {
  @override
  _WeatherbeeState createState() => _WeatherbeeState();
}

class _WeatherbeeState extends State<Weatherbee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Color(0xFF4D406B),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text("Weather Cards",style: TextStyle(
            fontSize: 28.0,
            //letterSpacing: 0.8,
            fontFamily: "Opensans"
          ),),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context,i){
              return WeatherCard(
                
              );
            }
          ),
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {

  final List<Color> blueGradient = [Color(0xFF32B4C2),Color(0xFF30BAC0),Color(0xFF2EC2C1),Color(0xFF2BCCC1)];
  final List<Color> redGradient = [Color(0xFFDB4D62),Color(0xFFFE6765)];
  final List<Color> purpleGradient = [Color(0xFF8A7AD3),Color(0xFF9776CD),Color(0xFFA375CA)];
  final List<Color> yellowGradient = [Color(0xFFFAEB71),Color(0xFFF8D800)];
  final List<Color> greenGradient = [Color(0xFF38F9D7),Color(0xFF43E97B)];
  final List<Color> tealGradient = [Color(0xFF90F7EC),Color(0xFF32CCBC)];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 15.0,
      vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
              child: Container(
                height: 175,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: redGradient
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Text("New York",style: TextStyle(
                  fontSize: 23.0,
                  fontFamily: "NotosansBold"
                ),),
                SizedBox(
                  height: 3.0,
                ),
              Text("UNITED STATES OF AMERICA",style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: "NotosansLight"
                ),),
                SizedBox(
                  height: 10.0,
                ),
                  Row(
                    children: <Widget>[
                      Text(
                      "30*",style: TextStyle(
                      fontSize: 48.0,
                      fontFamily: "NotosansBold"
                ),),
                SizedBox(
                  width: 10.0,
                ),
              Transform(
                  transform: Matrix4.translationValues(0, 4, 0),
                 child: Icon(
                    Icons.trending_flat,size: 28.0,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
              Transform(
                  transform: Matrix4.translationValues(0, 4, 0),
                 child: Icon(
                    Icons.ac_unit,size: 35.0,
                  ),
                ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}