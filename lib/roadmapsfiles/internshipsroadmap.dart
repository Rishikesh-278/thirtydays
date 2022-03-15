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

class internshipsroadmap extends StatefulWidget {
  const internshipsroadmap({Key? key}) : super(key: key);

  @override
  State<internshipsroadmap> createState() => _internshipsroadmapState();
}

class _internshipsroadmapState extends State<internshipsroadmap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Internships Roadmap ✨',
            style: TextStyle(color: Colors.black),
          )),
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
          backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
        ),
      ),
    );
  }
}
