import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TwitterTools extends StatefulWidget {
  const TwitterTools({Key? key}) : super(key: key);

  @override
  State<TwitterTools> createState() => _TwitterToolsState();
}

class _TwitterToolsState extends State<TwitterTools> {
  Future<void> _launchUrl(String url) async{
    final Uri uri = Uri(scheme:"https",host: url);
    if(!await launchUrl(uri,mode:LaunchMode.externalApplication)){
      throw "Cannot not launch url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("TwitterTools"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                onTap: (){
                  _launchUrl("www.tweethunter.io");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/tweethunter.png")),
                title: Center(child: Text("TweetHunter",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(child: Text("AI Tweet Generator. Choose a Twitter creator and generate tweets on the 		"
                    "same tone and same topic with our AI Twitter Tool.",style: TextStyle(color: Colors.white))) ,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                onTap: (){
                  _launchUrl("www.tweetmonk.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/tweetmonk.png")),
                title: Center(child: Text("TweetMonk",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("AI-powered thread publishing tool. Write, schedule, and publish Twitter ...",style: TextStyle(color: Colors.white)),
                ) ,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                onTap: (){
                  _launchUrl("www.postwise.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/postwise.jpg")),
                title: Center(child: Text("PostWise",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("World's smartest Twitter AI tool. Write tweets, schedule posts and grow your following using AI.",style: TextStyle(color: Colors.white)),
                ) ,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                onTap: (){
                  _launchUrl("www.tribescaler.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/tribescaler.png")),
                title: Center(child: Text("TribeScaler",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("For the first time ever, a tool that uses an AI algorithm for generating irrestistable thread hooks. Hook Generator. From keyword to hooks. Generating hooks has ...",style: TextStyle(color: Colors.white)
                )) ,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                onTap: (){
                  _launchUrl("www.tweetlify.co");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/tweetlify.png")),
                title: Center(child: Text("Tweetlify",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Tweetlify helps you create viral tweets in seconds, schedule them and automate audience building. It's built for individuals and compan",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
