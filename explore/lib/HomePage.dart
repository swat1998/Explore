import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'StateDetail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 100.0,
            height: MediaQuery.of(context).size.height - 140.0,
            child: ListView(
              children: <Widget>[
                _indianStates("West Bengal", "Home to the colonial era magnifisence and much more", "assets/images/Kolkata.png"),
                _indianStates("Tamil Nadu", "A land of cultural and religious heritage", "assets/images/tamilnadu.jpg")
              ],
            ),
          ),
        ),
      ],
    );
  }

  _indianStates(String state, String description, String imgPath) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imgPath),
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
              ),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                    state,
                    style: TextStyle(
                      fontFamily: 'Gotu',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gotu',
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stateDetails(imgPath, state)));
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("Explore ", style: TextStyle(color: Color(0xff003d3d), fontWeight: FontWeight.w600)),
                          Icon(Icons.explore,
                              color: Color(0xff003d3d))
                        ],
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
