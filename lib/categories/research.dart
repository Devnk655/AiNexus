import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Research extends StatefulWidget {
  const Research({Key? key}) : super(key: key);

  @override
  State<Research> createState() => _ResearchState();
}

class _ResearchState extends State<Research> {
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
        title: Text("Research"),
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
                  _launchUrl("www.consensus.app");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/consensus.png")),
                title: Center(child: Text("Consensus",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Consensus is a new search engine that uses AI to find you answers in 	scientific research. "
                    "Find out what the research says in seconds with Consensus.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.trinka.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/trinka.png")),
                title: Center(child: Text("Trinka",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Trinka is an AI-powered English grammar checker and language enhancement writing assistant designed for academic and technical writing. ",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.paperpal.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/paperpal.png")),
                title: Center(child: Text("PaperPal",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text("Paperpal is an advanced AI grammar checker and online academic writing tool 		"
                      "that identifies language errors and provides instant, ",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.writesonic.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/writesonic.jpg")),
                title: Center(child: Text("Writesonic",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("AI-powered content to boost your website's SEO and generate more traffic.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.scholarcy.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/scholarcy.png")),
                title: Center(child: Text(" Scholarcy",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Scholarcy™ is an online summarizing tool that generates and converts long articles into summary flashcards. ",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
