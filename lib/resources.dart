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


class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
      ),

      drawer: SafeArea(
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: ListView(
              children: <Widget>[
                CircleAvatar(
                  child: const Image(image: AssetImage('assets/images/logo.png')),
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
                ),//social links
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {Navigator.pushNamed(context, '/dashboard');},
                    color: Colors.white10,
                    elevation: 10,
                    icon: Icon(FontAwesomeIcons.notesMedical,color: Colors.white,),
                    //  icon: Image.asset('images/instagram.png', height: 15),
                    label: const Text('Dashboard',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),//Dashboard
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/dsarevision');}, icon: Icon(FontAwesomeIcons.notesMedical,
                        color: Colors.white),
                      label: Text('DSA Revision', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//DSA Revision
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/process');}, icon: Icon(FontAwesomeIcons.gamepad,
                        color: Colors.white
                    ),
                      label: const Text('Process',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Process
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/roadmaps');},
                      icon: Icon(FontAwesomeIcons.instagram,
                          color: Colors.white),
                      label: Text('Roadmaps', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Roadmaps
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/blogs');},
                      icon: Icon(FontAwesomeIcons.instagram,
                          color: Colors.white),
                      label: Text('Blogs', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Blogs
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/projects');}, icon: Icon(FontAwesomeIcons.instagram,
                        color: Colors.white),
                      label: Text('Projects', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Projects
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/books');}, icon: Icon(FontAwesomeIcons.instagram,
                        color: Colors.white),
                      label: Text('Books', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Books
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/resources');}, icon: Icon(FontAwesomeIcons.instagram,
                        color: Colors.white),
                      label: Text('Resources', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Resources
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/blockchain');}, icon: Icon(FontAwesomeIcons.instagram,
                        color: Colors.white),
                      label: Text('Blockchain',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//Blockchain
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: RaisedButton.icon(onPressed: () {Navigator.pushNamed(context, '/faqs');},
                      icon: Icon(FontAwesomeIcons.instagram,
                          color: Colors.white),
                      label: Text('FAQs', style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: Colors.white10,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),//FAQs
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(30, 41, 51,1),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 30, 5),
                  child: Text(
                    "Developer Resources ✨",
                    style: TextStyle(fontSize: 31),
                  ),
                ),
              ],
            ),//

            GestureDetector(
              onTap: () {launch('https://github.com/himahuja/Research-Internships-for-Undergraduates');},
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                color:  Colors.blueGrey[50],
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Research internships for Undergraduates: Global 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "This is a non-exhaustive list of opportunities available to Undergraduate students."
                              "Many of these positions are only focussed towards Indian students.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Research internships
            GestureDetector(
              onTap: () {launch('https://synonymous-browser-a64.notion.site/'
                  'c5040eacd2834908be60e035f16d63df?v=dcf1628b1e764863a293ebfe9627d923');},
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                color: Colors.blueGrey[50],
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Computer Science internships: USA, Summer 2022 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Tech internships in the USA, updated every week."
                              " Read the blogs, make a solid resume, revise DSA from dsarevision.com,"
                              " and put your best foot forward. Internships are the best way to learn more "
                              "about awesome products and companies, "
                              "and finally discover what you like!",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//USA CS internships
            GestureDetector(
              onTap: () {launch("https://synonymous-browser-a64.notion.site/"
                  "54fd9c69f6844dcdb1b319b1acac4560?v=cb7ef71e678a493c970302eeb502c888");},
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                color:  Colors.blueGrey[50],
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Web dev resources 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "All resources to get you started in web development. Pick one thing,"
                              " make a cool project,"
                              " document your learnings, and see if you like it or not. "
                              "Frontend, backend, devops included.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Web dev resources
            GestureDetector(
              onTap: () {launch("https://synonymous-browser-a64.notion.site/"
                  "0fb20e4b7fd54c2b92fef2b5ce111e7b?v=c33e9fbd688b49b793f5a4861323f8d7");},
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                color:  Colors.blueGrey[50],
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Frontend resources 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Amazing resources to get you a head start in frontend development. "
                              "Build more and learn through that. "
                              "Real learning will only come when you build your OWN projects -"
                              " not by just following tutorials or reading.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Frontend resources

          ],
        ),
      ),
    );
  }
}
