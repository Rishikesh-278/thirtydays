import 'package:flutter/material.dart';

//pages
import 'package:thirtydays/dashboard.dart';
import 'package:thirtydays/dsarevision.dart';
import 'package:thirtydays/process.dart';
import 'package:thirtydays/roadmaps.dart';
import 'package:thirtydays/blogs.dart';
import 'package:thirtydays/projects.dart';
import 'package:thirtydays/books.dart';
import 'package:thirtydays/resources.dart';
import 'package:thirtydays/blockchain.dart';
import 'package:thirtydays/faqs.dart';

//packages
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoadMaps extends StatefulWidget {
  const RoadMaps({Key? key}) : super(key: key);

  @override
  State<RoadMaps> createState() => _RoadMapsState();
}

class _RoadMapsState extends State<RoadMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roadmaps'),
      ),

      drawer: SafeArea(
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: ListView(
              children: <Widget>[
                CircleAvatar(
                  child:
                      const Image(image: AssetImage('assets/images/logo.png')),
                  radius: 90,
                  backgroundColor: Colors.grey[700],
                ),
                const Text(
                  'Name : Rishkesh Bidkar',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Text(
                  'Age : 20',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Divider(
                  height: 40,
                  color: Colors.green,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: Colors.white10,
                  ),
                  child: const Text(
                    'Links '
                    '⬇',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ), //social links
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: Icon(
                      FontAwesomeIcons.notesMedical,
                      color: Colors.white,
                    ),
                    //  icon: Image.asset('images/instagram.png', height: 15),
                    label: const Text('Dashboard',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ), //Dashboard
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dsarevision');
                      },
                      icon: Icon(FontAwesomeIcons.notesMedical,
                          color: Colors.white),
                      label: Text('DSA Revision',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //DSA Revision
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/process');
                      },
                      icon: Icon(FontAwesomeIcons.gamepad, color: Colors.white),
                      label: const Text('Process',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Process
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/roadmaps');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('Roadmaps',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Roadmaps
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/blogs');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('Blogs',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Blogs
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/projects');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('Projects',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Projects
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/books');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('Books',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Books
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/resources');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('Resources',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Resources
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/blockchain');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('Blockchain',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //Blockchain
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/faqs');
                      },
                      icon:
                          Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      label: Text('FAQs',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ), //FAQs
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(30, 41, 51, 1),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                "Awesome Roadmaps: Learn something new 💪",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
            ),//title

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    "Technologies",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),//Technlogies Title

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/webdevroadmap');
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(image: AssetImage('assets/images/webdev.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Web Development ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),//Text Contianer
                ],
              ),
            ),//web development
            GestureDetector(
              onTap: () {launch('https://twitter.com/aryan_eth/status/1439187683910115331?s=20');},
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(image: AssetImage('assets/images/blockchain.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 180, 0, 0),
                      child: Text('Blockchain Development ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),//Text Contianer
                ],
              ),
            ),//blockchain development
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/datascienceroadmap');
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(
                              image:
                              AssetImage('assets/images/datascience.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Data science ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Data science
            GestureDetector(
              onTap: () {Navigator.pushNamed(context, '/backenddevroadmap');},
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(
                              image:
                              AssetImage('assets/images/backenddev.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Backend Development ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Backend Dev

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    "Opportunities",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),//Title Opportunities

            GestureDetector(
              onTap: () {Navigator.pushNamed(context, '/internshipsandjobsroadmap');},
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(
                              image:
                              AssetImage('assets/images/jobs.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Internships, Jobs ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Internships/jobs
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(
                              image:
                              AssetImage('assets/images/freelancer.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Freelancing ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Freelancer

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    "Frameworks",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),//Frameworks title

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/flutterroadmap');
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(image: AssetImage('assets/images/flutter.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 170, 0, 0),
                      child: Text('Flutter ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//flutter,
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/reactroadmap');
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(image: AssetImage('assets/images/react.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 200, 0, 0),
                      child: Text('React ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//React
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 1, 20, 20),
                    //color: Color.fromRGBO(199, 210, 254, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Image(image: AssetImage('assets/images/angular.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 200, 0, 0),
                      child: Text('Angular ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Angular
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(241, 245, 249, 10),
    );
  }
}
