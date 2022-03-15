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

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Projects'),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
              child: ListView(
                children: <Widget>[
                  CircleAvatar(
                    child: const Image(
                        image: AssetImage('assets/images/logo.png')),
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
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon:
                            Icon(FontAwesomeIcons.gamepad, color: Colors.white),
                        label: const Text('Process',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('Roadmaps',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('Blogs',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('Projects',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('Books',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('Resources',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('Blockchain',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        label: Text('FAQs',
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
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
                  "Build an interesting project today! ✨",
                  style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                ),
              ), //title

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Web",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Web title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=hQAHSlTtcmY');
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
                          "Learn React In 30 Minutes 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn all of the basics of React in only 30 minutes.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ), //learn react in 30 mins
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=hQAHSlTtcmY');
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
                          "Complete Python Django 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn everything you need to know to start your web development journey.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//python Django
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=LiOzTQAz13Q');
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
                          "Angular project from scratch 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn how to create an Angular 11 project from scratch.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Angular from scratch
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=fmyvWz5TUWg');
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
                          "Learn Ruby on Rails - Full Course 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn Ruby on Rails in this full course for beginners.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Ruby on rails

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 020, 20, 0),
                    child: Text(
                      "Mobile",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Mobile title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=hwBUU9CP4qI&list=PL0vfts4VzfNiQYtnn1TZ6U0Ec_vjCN9VY');
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
                          "Awesome things: Flutter 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn amazing things in Flutter to use them in your next project, start today.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Awesome things in flutter
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=0-S5a0eXPoc');
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
                          "React Native Tutorial for Beginners 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to build an amazing React Native app for iOS & Android.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//React native
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=0-S5a0eXPoc');
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
                          "React Native Tutorial for Beginners 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to build an amazing React Native app for iOS & Android.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//React native
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=0-S5a0eXPoc');
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
                          "React Native Tutorial for Beginners 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to build an amazing React Native app for iOS & Android.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//React native

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Firebase",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Firebase title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=XVv6mJpFOb0');
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
                          "Web Scraping 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Scrape the web and find useful things to store.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//web scraping
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=xfzGZB4HhEE');
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
                          "Algo trading with Python 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Algorithmic trading with python in this video",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Algo trading with python
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=JeznW_7DlB0');
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
                          "OOP with Python 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn about the concepts of object oriented programming",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//OOP with python
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=XGf2GcyHPhc');
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
                          "Build 5 games 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Build 5 interactive games in this long videos.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//build 5 games

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Wordpress",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Wordpress title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=ciIuzYEjQYM&feature=youtu.be');
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
                          "Online course website 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn  how to make a chrome extension",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Online course website
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=F9UBPbsZ2Rs');
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
                          "Blog website 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to build extensions with react js",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Blog website
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=oB6b5P6bcZg');
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
                          "Wordpress beginner 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Control spotify through a chrome extension",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//wordpress beginner
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=H-anyDrYHyg&list=PLIckDtOkqwLv56F0c8zbHDivaUQgJr9xw&ab_channel=AnObjectIsA');
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
                          "Login systems 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Build all login systems with extensions",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Login systems

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Chrome extensions",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),//Chrome Extension title
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
                          "Chat app - react 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Make a chat app with firebase and react.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Chat app react
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
                          "Beginner guide 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Ultimate beginner guide to learn firebase",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Beginner guide
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=rQvOAnNvcNQ');
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
                          "Firebase for web 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Basic introdcution to firebase for web",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//firebase for web
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=iWEgpdVSZyg');
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
                          "100 firebase tips 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Tips to keep in mind while working with firebase.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//100 firebase tips

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Python",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),//Python title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=-dhMbVEreII');
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
                          "Build an extension 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to make a extensions for chrome browser",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Build and extension
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=-dhMbVEreII');
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
                          "Build with react 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Build extensions for chrome with react js",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Build with react
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=l7_ZAFatwrY&list=PLIckDtOkqwLvI3ZmkjnOQRS_csGWmHAlU');
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
                          "Spotify extension 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Control spotify through a chrome extension",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Spotify extension
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=l7_ZAFatwrY&list=PLIckDtOkqwLvI3ZmkjnOQRS_csGWmHAlU');
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
                          "Login systems 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Build all login systems with extensions",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Login systems

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Java",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),//Java title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=qH9mWpYMtYU');
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
                          "Build sudoku 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn fundamentals of java with sudoku",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Build sudoku
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=tZvjSl9dswg');
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
                          "Android Apps 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to make Android app development with java",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Android Apps
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=5o3fMLPY7qY');
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
                          "Java GUI 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to build a simple GUI with Java",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Java Gui
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=bI6e6qjJ8JQ');
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
                          "Snake Game 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Learn to build a snake game in Java",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Snake game

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Random",
                      style:
                      TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),//Random title
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=XVv6mJpFOb0&feature=youtu.be');
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
                            "Learn how to perform web scraping with Python using the Beautiful Soup library.",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//web scraping with python
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=s8uyLscRl-Q');
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
              ),//code a trading bot with python
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=aHJCt2adSWA');
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
              ),//Interactive chart with D3.js
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=jmznx0Q1fP0&feature=youtu.be');
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
                          "Machine Learning with ml5.js 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Intro to friendly machine learning for the web!",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Machine learning with ml5.js
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=9kRgVxULbag');
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
                          "Firebase - Beginner 🚀",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "Master the basics of Firebase in 20 minutes",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Firebase beginners
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=-dhMbVEreII');
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
                        Text(
                            "Intro to building different chrome extensions",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),//Build chrome extensions
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=jgpVdJB2sKQ');
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
              ),//Redis crash course
              GestureDetector(
                onTap: () {
                  launch(
                      'https://www.youtube.com/watch?v=JIbIYCM48to&feature=youtu.be');
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
                          "Top 100 AWS services 🚀",
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
              ),//Top 100 AWS services

            ],
          ),
        ),
      backgroundColor: Color.fromRGBO(241, 245, 249, 10),
    );
  }
}
