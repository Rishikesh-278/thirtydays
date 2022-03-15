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

class Process extends StatefulWidget {
  const Process({Key? key}) : super(key: key);

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Process'),
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text(
                          "Road to your next Technical Internship",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                                color: Color.fromRGBO(39, 65, 67, 1),
                                margin: EdgeInsets.fromLTRB(0, 5, 10, 15),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: Text("Understanding the Process",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                )),
                          ],
                        ),
                        Text(
                          "Understanding the application process pipeline is a huge part of having successful interviews -- after all, "
                          "it is impossible to do well in an interview if you don’t even make it to that step."
                          "HR Statistics https://zety.com/blog/hr-statistics"
                          "The diagram shows the step by step pipeline of how an application goes to an offer for most CS applicants. "
                          "Of course some systems are different, but most generally follow this pattern."
                          "Do some research on LeetCode, Jumpstart, Reddit, or Glassdoor about how a company’s interview process works. "
                          "For instance some interview pipelines might go something like: "
                          "application, ATS, coding challenge 1, coding challenge 2, coding challenge 3, technical interview, offer."
                          "However other processes might not even have a coding challenge and may go straight into an interview"
                          " (this sometimes happens if your resume particularly stood out, the company just doesn’t do challenges,"
                          " the company uses tools/skills they don’t expect you to already know, or you had some sort of referral).",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                                color: Color.fromRGBO(39, 65, 67, 1),
                                margin: EdgeInsets.fromLTRB(0, 5, 10, 15),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: Text("Job Materials and the ATS",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                )),
                          ],
                        ),
                        Text(
                          "ATS 🔥",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ), //ATS title
                        Text(
                          "One of the most common mistakes computer science applicants make with their resumes is underestimating the ATS "
                          "(Applicant Tracking System) and the importance of tailoring a resume for a specific job."
                          "Today, the vast majority of companies use an ATS system to parse every applicants’ "
                          "resume and lots of systems work by filtering the number of applicants that make it past every step. "
                          "An ATS is essentially a program that reads through"
                          "every resume very quickly and gets rid of any resume it deems as unqualified by comparing keywords in the"
                          " application and job posting."
                          "This step sometimes comes with some assistance from HR staff to double check the work, but for bigger"
                          " companies it might just all be automatic. ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "Resume 🔥",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ), //Resume
                        Text(
                          "Since it is read by a robot and not a human, you must pay attention to the following:",
                          style: TextStyle(fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Make sure your resume contains keywords that are featured in the job posting as well as the skills"
                            " that they are looking for. "
                            "Read through the job post and try to add those keywords to skills or work history.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ), //point 1
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Make sure your resume is in an easy to read file format like .pdf, .txt, .docx. "
                            "When in doubt stick with .pdf as this is pretty standard.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ), //point 2
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Keep it simple. Avoid using fancy borders, weird bullets, word art, etc."
                            " These really don’t serve much of a purpose to a human reader anyway and could really confuse the ATS. "
                            "There’s nothing wrong with having a simple Times New Roman resume like so",
                            style: TextStyle(fontSize: 16),
                          ),
                        ), //point 3
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Avoid pictures and graphics. ATS systems can’t really read graphics or pictures so if your resume "
                            "contains screenshots,"
                            "images, or anything that isn’t text based, "
                            "the ATS will not be able to read it and whatever is in it will not help you. Type out the entire resume.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ), //point 4
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "Here is an easy to use template in word, latex. All of us use this template and it works perfectly. "
                            "Word & Latex both work.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "The following are some limited free resources to see how your resume stands up to an "
                            "ATS scan with a job description you are going for: ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launch('https://resumeworded.com/');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              "https://resumeworded.com/",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ), //resumeworded
                        GestureDetector(
                          onTap: () {
                            launch('https://www.jobscan.co/');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              "https://www.jobscan.co/",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ), //jobscan

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "Cover Letter 🔥",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ), //Cover letter
                        Text(
                            "Some companies still require a cover letter as a part of their applications, and in other cases,"
                            " if it is not required then it might still be good to have one."
                            "The cover letter is a chance for you to give a recruiter some extra information about why you might be"
                            " a good fit for a position that might not be as easy to convey in a bulleted resume."
                            "They show that you’re passionate about the job and have more than just programming skills",
                            style: TextStyle(fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              "🌟The following document contains a great guide to resumes as well as cover letter samples and walkthroughs"
                              " towards the last few pages: "
                              "https://ocs.fas.harvard.edu/files/ocs/files/hes-resume-cover-letter-guide.pdf",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              "Since the cover letter is supposed to be one page long, you will find that they are actually"
                              " not that difficult to write and it is once again important to tailor it specifically to the job you are applying for. "
                              "Some guides and examples of cover letters are here:",
                              style: TextStyle(fontSize: 16)),
                        ),

                        GestureDetector(
                          onTap: () {
                            launch('https://www.engineering.cornell.edu/'
                                'sites/default/files/departments/career%20services/Cover%20Letter%20Guide%20(accessible%20for%20website).pdf');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              "🚀 Cornell Engineering",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ), //Cornell engineering
                        GestureDetector(
                          onTap: () {
                            launch(
                                'https://www.cics.umass.edu/careers/articles/cover-letter-tips');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              "🚀 CICS UMass tips",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ), //CICS UMass tips
                        GestureDetector(
                          onTap: () {
                            launch(
                                'https://www.cmu.edu/career/documents/college-specific-resources/scs/New%20SCS%20Files%202018/CoverLetterGuide2018_SCS.pdf');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              "🚀 CMU Cover Letter ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ), //CMU Cover letter

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Text(
                            "Resume Review 🔥",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ), //Resume Review
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                              "We’re currently developing a free local ATS software to parse and show all the skills listed "
                              "inside a resume so that you can exactly know how your resume parses when you apply for a position. There are multiple options "
                              "available online but most of them are paid and the free services don’t tell you exactly how you rank."
                              "We’re also reviewing resumes for free, so if you want a detailed review, email us at 30dayscoding@gmail.com",
                              style: TextStyle(fontSize: 16)),
                        ),

                        Row(
                          children: <Widget>[
                            Container(
                                color: Color.fromRGBO(39, 65, 67, 1),
                                margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      100, 15, 118, 15),
                                  child: Text("Profile building",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                )),
                          ],
                        ), //profile building title
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Making a solid profile before applying is a must. You need to present yourself as a strong candidate "
                                  "to recruiters and a candidate with a good profile will likely be more interesting than one without.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "The first and most important rule is to be wary of what you post publicly"
                                  " on social media. Always be aware that potential (or even current) "
                                  "employers may be looking at what you are doing so make sure that there"
                                  " isn’t anything out there (even on old accounts)  that they wouldn’t like "
                                  "to see.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "If you have a very unique name, try Googling it and seeing what comes up. "
                                  "Good things to see here are things like mentions in school newspapers, "
                                  "social media profiles, honor roll mentions, projects, personal websites, "
                                  "etc.",
                              style: TextStyle(fontSize: 16)),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "LinkedIn 🔥",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),//LinkedIn
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Sometimes companies like to have recruiters do some research into your "
                                  "background after you apply to see if they should send you an interview."
                                  " Alternatively, people who are just hiring for a position will do searches"
                                  " on platforms like LinkedIn to try to find people they think might be "
                                  "interested in applying for a new opening. Either way, it is critical to "
                                  "have a strong profile on social media and the internet.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "🌟By far the most popular professional platform is LinkedIn so the odds are"
                                  " that if a recruiter actually does research about you, they will check"
                                  " out your LinkedIn profile. "
                                  "Fill out all of the information for the profile:",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Profile Picture: Select a nice and clear professional looking photo of just you "
                                "- shoulders and up",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Background Image: Select a picture of your school if you want "
                                "- leaving this blank isn’t bad",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Headline: This section is surprisingly important as it is the first thing"
                                " people see when they search up your profile. It should contain a short "
                                "summary of what you do professionally or what you are looking for."
                                "  If you have industry experience, hobbies, or projects you should write"
                                " what you have experience in  and after that you can add some vertical"
                                " bars for multiple entries. Some sample  headline look like so:",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Firstname Lastname",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Honors Computer Science and Mathematics Student at University of "
                                  "Massachusetts Amherst",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Firstname Lastname",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Data Scientist | Open Source Contributor | Lecturer | Entrepreneur",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Firstname Lastname",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "PhD Computer Science student actively seeking summer internship",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Firstname Lastname",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Founder & CEO of 30DaysCoding Software",
                              style: TextStyle(fontSize: 16)),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 About: Fill in the about section with a relevant and professional "
                                "summary about your education, work experience, and other interesting "
                                "details.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Experience: Enter all relevant work experience to the field you"
                                " are interested in and fill out all the corresponding information."
                                " For instance if you had a position as a lifeguard in High School,"
                                " it’s probably safe to get rid of that unless you have nothing else."
                                " These entries can mostly be copied from your resume/CV",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Education: Be sure to fill in your majors, minors, degree type, "
                                "awards, and graduation dates",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Skills: Add all the important skills you have - languages, "
                                "software, soft skills, frameworks, etc. Feature the top 3 that are most "
                                "relevant to the positions you typically apply for. ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "🚀 Accomplishments: This is a great place to enter project work or courses"
                                " taken for a student without a lot of industry experience.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                              "Regularly log into LinkedIn and build your network. "
                                  "Connect with people you know and have worked with and make sure"
                                  " to have them endorse your skills. It looks very impressive to "
                                  "recruiters to see a candidate with a strong profile and lots of "
                                  "connections and endorsements.",
                              style: TextStyle(fontSize: 16)),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "Personal Website 🔥",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),//Personal website title
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "While it is optional, it is often helpful to have a personal"
                                  " website to hold additional information. With companies "
                                  "looking at things like company fit and backgrounds of their "
                                  "candidates, you may find it worth your time to make a small "
                                  "personal site - especially in something like web development "
                                  "or graphic design.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "With graphic design, UX/UI, and anything art related,"
                                  " your personal website will usually be a portfolio of all your best works. "
                                  "In this case it might not need to be made by you and"
                                  " you can use free tools like Adobe Portfolio to host your"
                                  "images and descriptions.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "However with other fields, you should work on creating your own website"
                                  " from scratch. A template is fine if you don’t have a lot of web "
                                  "development experience, but be sure to really make it your own by "
                                  "adding where you can and removing unnecessary stuff.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "A personal site allows you to go more in depth with your bio and add "
                                  "some more pictures of yourself as well as some of your interests "
                                  "and hobbies. Companies like Google especially love passionate and "
                                  "talented employees (they have a word for this: googly)."
                                  " Here is the chance to show off all of your good web development"
                                  " skills as well as linking your projects and writing more about the"
                                  " explanations and skills.",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                              "🌟GitHub Pages allows you to host a simple website "
                                  "(without a server or anything) from a public GitHub repository. "
                                  "Just name the respositor yourUsername.github.io, make it public, "
                                  "name the main file index.html, make a few pushes to the repository"
                                  " and you should see your webpage at yourUsername.github.io. "
                                  "Take this for an example - download the template here.",
                              style: TextStyle(fontSize: 16)),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            "Projects 🔥",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),//projects title

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      backgroundColor: Color.fromRGBO(199, 210, 254, 1),

    );
  }
}
