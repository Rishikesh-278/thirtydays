

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
import 'package:thirtydays/roadmapsfiles/flutterroadmap.dart';
import 'package:thirtydays/roadmapsfiles/internshipsandjobsroadmap.dart';

//roadmaps files
import 'package:thirtydays/roadmapsfiles/internshipsroadmap.dart';
import 'package:thirtydays/roadmapsfiles/reactroadmap.dart';
import 'package:thirtydays/roadmapsfiles/webdevroadmap.dart';
import 'package:thirtydays/roadmapsfiles/backenddevroadmap.dart';
import 'package:thirtydays/roadmapsfiles/datascienceroadmap.dart';

//packages
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main () => runApp( MaterialApp(

    initialRoute: '/dashboard',
    routes:
    {
        '/dashboard':(context)=> dashboard(),
        '/dsarevision':(context)=> dsarevision(),
        '/process': (context)=> Process(),
        '/roadmaps': (context)=> RoadMaps(),
        '/blogs':(context)=> Blogs(),
        '/projects':(context)=> Projects(),
        '/books':(context)=> Books(),
        '/resources':(context)=> Resources(),
        '/blockchain':(context)=> Blockchain(),
        '/faqs':(context)=> FAQS(),

        '/webdevroadmap':(context)=> webdevroadmap(),
        '/internshipsroadmap':(context)=> internshipsroadmap(),
        '/datascienceroadmap':(context)=> datascienceroadmap(),
        '/backenddevroadmap': (context)=> backenddevroadmap(),
        '/flutterroadmap': (context)=> flutterroadmap(),
        '/reactroadmap': (context)=> reactroadmap(),
        '/internshipsandjobsroadmap':(context)=>internshipsandjobsroadmap(),
    }
));

