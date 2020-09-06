import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'HomePage.dart';

// ignore: camel_case_types
class stateDetails extends StatefulWidget{

//  final String firebaseToken;
  final String imgPath;
  final String stateName;
  const stateDetails(this.imgPath, this.stateName);

  @override
  _stateDetailsState createState() => _stateDetailsState();
}

// ignore: camel_case_types
class _stateDetailsState extends State<stateDetails>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xff62e3e3),
              ),
              child: Icon(Icons.arrow_back),
            ),
            splashColor: Color(0xff62e3e3),
            onTap: (){Navigator.of(context).pop();},//to a settings page
          ),
        ),
        title: Text(widget.stateName, style: TextStyle(fontFamily: 'Saman', color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xff62e3e3),
                ),
                child: Icon(Icons.bookmark_border),
              ),
              splashColor: Color(0xff62e3e3),
              onTap: (){},//to a settings page
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                )
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          SizedBox(height: 20.0),
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Trending', style: TextStyle(color: Colors.white, fontSize: 25)),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.white,),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _tourCardBuild(context, 'assets/images/kolkata_pic1.jpg'),
                    _tourCardBuild(context, 'assets/images/kolkata_pic1.jpg'),
                    _tourCardBuild(context, 'assets/images/kolkata_pic1.jpg')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Sights', style: TextStyle(color: Colors.white, fontSize: 25)),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.white,),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
//              GridView(
//                children: <Widget>[
//
//                ],
              ),
            ],
          )
        ]
      );
  }
}

Widget _tourCardBuild(BuildContext context, String imgPath){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Stack(
      children: <Widget>[
        Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            width:MediaQuery.of(context).size.width - 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Victoria Memorial', textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25)),
                        Text('Short Visit to the museum', textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 20)),
                      ],
                    )
                  ),
                  InkWell(
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff62e3e3),
                      ),
                      child: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                    splashColor: Color(0xff62e3e3),
                    onTap: (){},//to a settings page
                  ),
                ],
            ),
          ),
        ),
      ]
    ),
  );
}

//Widget _sightCardBuild(BuildContext context, String placeName, String imgPath){
//  return Padding(
//    padding: EdgeInsets.all(10.0),
//    child: InkWell(
//      onTap: (){
////        Navigator.push(context, ) // to the place the place content is
//      },// to the respective place of interest
//      child: Stack(
//        children: <Widget>[
//          Container(
//            height: (MediaQuery.of(context).size.height - 40) * 0.5,
//            width: 40,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(7.0),
//              image: DecorationImage(
//                image: AssetImage(imgPath),// Path to the image
//                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
//              ),
//            ),
//          ),
//          Positioned(
//            child: Text(placeName, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
//          )
//        ]
//      ),
//    ),
//  );
//}