import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

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

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Dashboard',
        style: TextStyle(color: Colors.black),
      ),
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
                  child : Padding(
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
          backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            //starting label
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              color: Color.fromRGBO(199, 210, 254, 1),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                child: Column(
                  children: const <Widget>[
                    Text(
                      "Explore your coding interests in the next 30 days",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                        "We've developed and compiled the best resources for you to explore coding, prepare for tech interviews, "
                        "get awesome internships, become a better developer, and eventually find something that you like!",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),

            //Roadmaps
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 30, 5),
                  child: Text(
                    "Roadmaps",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/webdevroadmap');
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
            ), //webdev
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/internshipsroadmap');
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
                                  AssetImage('assets/images/internships.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Internships ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ), //internships
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
            ), //DataScience
            GestureDetector(
              onTap: () {
                launch("https://www.google.com");
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
            ), //flutter

            //Build interesting projects
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 30, 5),
                  child: Text(
                    "Build interesting projects",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ), //Build interesting projects
            GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=XVv6mJpFOb0&feature=youtu.be');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Web Scraping with Python 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn how to perform web scraping with Python using the Beautiful Soup library",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //python web scraping
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=s8uyLscRl-Q&feature=youtu.be');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "How to Code a Trading Bot in Python 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Code a python trading algorithm in the QuantConnect platform.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //trading bot with python
            GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=aHJCt2adSWA');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Building an interactive chart with D3.js 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn how to use core D3 features to build a basic dashboard with a barchart.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //D3.js
            GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=jmznx0Q1fP0');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Machine Learning with ml5.js 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text("Intro to friendly machine learning for the web!",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //ml5.js machine learning
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=9kRgVxULbag&feature=youtu.be');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Firebase - Beginners 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text("Master the basics of Firebase in 20 minutes",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //firebase beginner
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=-dhMbVEreII&feature=youtu.be');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Build chrome extensions 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text("Intro to building different chrome extensions.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //build chrome extensions
            GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=jgpVdJB2sKQ');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Redis Crash Course 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn the basics of Redis - from installing to using it.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //redis crash course
            GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=JIbIYCM48to');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Top 100 services of AWS 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn about the top 50 cloud products in just ten minutes.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Top 100 AWS services

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 30, 5),
                  child: Text(
                    "Books",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),//Books title
            GestureDetector(
              onTap: () {
                launch("https://www.google.com");
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
                          Image(image: AssetImage('assets/images/entrepreneurship.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Entrepreneurship ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Entrepreneurship
            GestureDetector(
              onTap: () {
                launch("https://www.google.com");
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
                          Image(image: AssetImage('assets/images/webdevbook.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Web developemnt ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Web Development
            GestureDetector(
              onTap: () {
                launch("https://www.google.com");
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
                          Image(image: AssetImage('assets/images/designandtech.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Design and tech ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Design and tech
            GestureDetector(
              onTap: () {
                launch("https://www.google.com");
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
                          Image(image: AssetImage('assets/images/appsandsoftware.png')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 0, 0),
                      child: Text('Apps ans Software ➡',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),//Apps and Software

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 30, 0),
                  child: Text(
                    "Blogs",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),//Blogs Row
            GestureDetector(
              onTap: () {
                //launch('https://www.youtube.com/watch?v=JIbIYCM48to');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Improving your computer science resume! 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "A lot goes into making the right resume, "
                              "here are some of the tips to keep in mind when you update your resume next time!",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//resume
            GestureDetector(
              onTap: () {
                //launch('https://www.youtube.com/watch?v=JIbIYCM48to');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "How to apply for internships and jobs, the right way! 📗",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Use these proven ways to increase your chances for your first interview."
                              " Many of you would be surprised, "
                              "give it a read.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//apply for internships
            GestureDetector(
              onTap: () {
                //launch('https://www.youtube.com/watch?v=JIbIYCM48to');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Tips when taking a technical phone interview! 🍕",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "The last thing you want before an interview is anxiety or stress."
                              " Here is a short list of things you can keep in mind.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Technical interview
          ],
        ),
      ), //body wrapped inside SingleChildScrollView

      floatingActionButton: FloatingActionButton(
        onPressed: () => exit(0),
        tooltip: 'Close app',
        child: Icon(Icons.close),
      ),

      backgroundColor: const Color.fromRGBO(241, 245, 249, 10),
    );
  }
}
