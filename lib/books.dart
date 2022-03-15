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

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
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
          children:<Widget> [

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 30, 1),
                  child: Text(
                    "Entrepreneurship, Leadership",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () {
                launch(
                    'https://www.amazon.com/gp/product/B01CRJA470/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding'
                        '-20&creative=9325&linkCode=as2&creativeASIN=B01CRJA470&linkId=554b336a394a21a80f0f2bea6776ece3');
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
                        "Shoe Dog: A memoir by the creator of Nike 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Nike founder and CEO Phil Knight shares the inside story of the company's early days as an intrepid start-up",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//shoe dog
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0990976904/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0990976904&linkId=2747d87c1ab22abde6b9b081f1b8a770");
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
                        "15 Commitments of Conscious Leadership 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "These fifteen commitments are a distillation of decades of work with CEOs and other leaders.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//15 commitments
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1572245379/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1572245379&linkId=4dacd89783ca2395f1fdeb39224aa5bd");
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
                        "The Untethered Soul: The Journey Beyond 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "What would it be like to free yourself from limitations and soar beyond your boundaries?",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//untethered soul
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0062937650/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0062937650&linkId=c5320c17bbf75eff9b0bfd2f6fac8cb6");
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
                        "Influence: Psychology of Persuasion 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Psychology of why people say yes and how to apply these insights ethically in business and everyday settings",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Psychology of Persuasion
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0143129252/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0143129252&linkId=07554c98861a7231af38895c78cdaadf");
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
                        "The Artist's way 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Gentle affirmations, inspirational quotes, fill-in-the-blank lists and tasks",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Artists way
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0553208845/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0553208845&linkId=d914da73b62befe06210827662521d03");
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
                        "Siddhartha 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "This book has influenced generations of readers, writers, and thinkers",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Siddhartha
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B07CWGFPS7/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B07CWGFPS7&linkId=534c89c6f8536fc42d8023e25033ef28");
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
                        "Dare To Lead 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Teaches us what it means to dare greatly, rise strong, and brave the wilderness",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Dare to lead
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0804139296/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0804139296&linkId=23a6a749dc67c02feb8856c1c7eab0fb");
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
                        "Zero to One 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Peter Thiel shows how we can find singular ways to create those new things.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Zero to one
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0307463745/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0307463745&linkId=411da88273d1b310ca2cc5960c5924b4");
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
                        "Rework 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "What you really need to do is stop talking and start working. This book shows you the way.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Rework
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B00J7XRVCQ/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B00J7XRVCQ&linkId=366d4b29a5ae6d47329afb1b81918aa8");
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
                        "Time management 🚀",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "The better you use your time, the more you will accomplish, and the greater your rewards",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Time Management

            const Divider(
              height: 40,
              color: Colors.green,
            ),

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 30, 5),
                  child: Text(
                    "Programming Languages",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ],
            ),//Programming Languages

            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B077WZSHJV/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B077WZSHJV&linkId=95ea34d892f120761b3d3a85ebd446ee");
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
                        "C++ crash course 🍔",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "A fast-paced introduction to modern C++ written for experienced programmers",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//C++
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1593279280/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1593279280&linkId=0c56133bcb557ad3261909a0f048010b");
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
                        "Python crash course 🍔 ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "A fast-paced, no-nonsense guide to programming in Python.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Python
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1260440214/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1260440214&linkId=1b6ce340cc07adb35568d9bc8c2270bf");
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
                        "Java: Beginner guide 🍔 ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Java: A Beginner’s Guide, Eighth Edition gets you started programming in Java right away",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Java
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/0596517742/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=0596517742&linkId=5f1952620b6172fda0062972b92e390b");
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
                        "JS: the good parts 🍔 ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Everything about javascript in a single book: ideas, OOPS, and more",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//JS: good parts

            const Divider(
              height: 40,
              color: Colors.green,
            ),

            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 30, 1),
                  child: Text(
                    "Web Development",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ],
            ),//Web Development

            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1849693706/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1849693706&linkId=bd71992613c572e490401589e8e40c86");
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 1),
                color: Color.fromRGBO(255, 255, 255, 100),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 25, 40, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "HTML5 Graphing and data visualization ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Exciting visual world of Canvas and HTML5 using this recipe-packed cookbook",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//HTML5 Graphing and data visualization ⚽
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B077HJFCQX/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B077HJFCQX&linkId=eff07d9bc9f74f5c9138559f377baf98");
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
                        "The road to React for Web dev ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Comprehensive and pragmatic yet concise React feat. Hooks book.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//react for web
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B09CYQ8PR6/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B09CYQ8PR6&linkId=a8b097164db02517f8dd7725e3709d2d");
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
                        "Beginning MEAN Stack from scratch ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Fun, hands-on and pragmatic journey to learning MEAN stack development.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//MEAN Stack
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1593277571/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1593277571&linkId=e0c2f6bffb2c3a180a175e517c53eee6");
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
                        "Understanding ES6 in Javascript ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Complete guide to the object types, syntax, and other exciting changes in JavaScript..",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//ES6 in JS
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1118871650/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1118871650&linkId=3f293327002f8de93a3f0287461cbf04");
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
                        "Javascript and Jquery ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Detailed explanation as if you were being taught to create the plugins yourself",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//JS and Jquery
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B00RT702VE/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B00RT702VE&linkId=b937c05836395788c8a0283be8357426");
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
                        "HTML, CSS, JS ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Information on designing and building Web pages with HTML, CSS, JS from scratch",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//HTML CSS JS
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/1839210664/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=1839210664&linkId=49f0aac1df3ea59d7e17689bb7ee0e11");
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
                        "Learning Angular ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Learn the fundamentals of Angular to build web applications using TypeScript",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Angular
            GestureDetector(
              onTap: () {
                launch("https://www.amazon.com/gp/product/B07C8728J9/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=30dayscoding-20&creative=9325&linkCode=as2&creativeASIN=B07C8728J9&linkId=41ffebd5db78f3cccf8c2d186f546f63");
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
                        "Web dev for dummies ⚽",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                          "Develop features to run modern websites, web apps, and mobile apps from this book.",
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),//Web dev for dummies

          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(241, 245, 249, 10),
    );
  }
}
