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

class Blockchain extends StatefulWidget {
  const Blockchain({Key? key}) : super(key: key);

  @override
  State<Blockchain> createState() => _BlockchainState();
}

class _BlockchainState extends State<Blockchain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blockchain'),
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

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 30, 5),
                  child: Text(
                    "Blockchain is the future",
                    style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), //Blockchain title
            const Divider(
              height: 20,
              color: Colors.green,
            ),

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 30, 5),
                  child: Text(
                    "Blockchain 🔥",
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ],
            ), //Blockchain title
            GestureDetector(
              onTap: () {
                launch('https://blockchain.berkeley.edu/courses/');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 2, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Blockchain fundamentals in 30 mins",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "BerkeleyX Blockchain Fundamentals Professional Certificate",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //BerkeleyX Blockchain
            GestureDetector(
              onTap: () {
                launch('https://ocw.mit.edu/courses/'
                    'sloan-school-of-management/15-s12-blockchain-and-money-fall-2018/');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Blockchain fundamentals in 30 mins",
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
            ), //Blockchain and money
            GestureDetector(
              onTap: () {
                launch('https://www.coursera.org/specializations/blockchain');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Blockchain Specialization",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn how the blockchain is leading to a paradigm shift in decentralized application programming",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Blockchain Specialization
            GestureDetector(
              onTap: () {
                launch('https://cryptohack.org/courses/');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Intro to cryptography",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn about modern cryptography by solving a series of interactive puzzles and challenges.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Intro to cryptography

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 15, 30, 1),
                  child: Text(
                    "Smart Contracts 🎂",
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ],
            ), //Smart Contracts title
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.defi-academy.com/courses/introduction-to-smart-contracts');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 2, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Introduction to Smart contracts",
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
            ), //Intro to smart contracts
            GestureDetector(
              onTap: () {
                launch(
                    'https://medium.com/swlh/what-are-smart-contracts-6c13f6c725d7');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Smart Contracts basic article",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Smart contracts have the potential to replace notaries, lawyers, and bank intermediaries — or do they?",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Basic Article
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=ZE2HxTmxfrI&ab_channel=SimplyExplained');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Smart Contracts simply explained",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "What are smart contracts and what do they have to do with blockchains and cryptocurrencies",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Smart Contracts simply explained
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=pWGLtjG-F5c&feature=youtu.be');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Smart contracts explained",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "A smart contract is a piece of code that can be executed automatically and in a deterministic way.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Explained

            GestureDetector(
              onTap: () {
                launch('https://nftschool.dev/');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                color: Color.fromRGBO(199, 210, 254, 1),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        "Learn about NFTS",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "What does it mean to own a piece of the internet?"
                          " Can you sell a meme to the highest bidder?"
                          " Is the metaverse finally happening? Let's find out together!",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //NFTs label and link

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 30, 1),
                  child: Text(
                    "Ethereum 🍔",
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ],
            ), //Smart Contracts
            GestureDetector(
              onTap: () {
                launch(
                    'https://questbook.notion.site/Building-on-Ethereum-99fd428fb1964c4492c23f4d6a701061');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 2, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Quest book course",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Start building on ethereum with this free course. "
                          "Make sure to get the prerequisites covered first.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Quest book course
            GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=9UtxwQ50c2Y');
                launch('https://www.youtube.com/watch?v=9UtxwQ50c2Y');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "What is ethereum",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "What is Ethereum (ETH)? Explained easily for Beginners.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //What is ethereum
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=itUrxH-rksc&ab_channel=DappUniversity');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Complete ethereum course",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Intro To Ethereum Programming with this 10 hour long course.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //ethereum course
            GestureDetector(
              onTap: () {
                launch(
                    'https://www.youtube.com/watch?v=a0osIaAOFSE&ab_channel=NaderDabit');
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
                        "Full stack ethereum development",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "The Complete Guide to Full Stack Ethereum Development - Tutorial for Beginners",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ), //Full stack ethereum dev
          ],
        ),
      ),

      backgroundColor: const Color.fromRGBO(241, 245, 249, 10),
    );
  }
}
