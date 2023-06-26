import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Coding extends StatefulWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  State<Coding> createState() => _CodingState();
}

class _CodingState extends State<Coding> {
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
        title: Text("Coding"),
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
                  _launchUrl("www.deepcode.ai");
                },
                leading: Image(
                    height: 30,
                    width: 40,
                    image: AssetImage("images/deepcode.png")),
                title: Padding(
                  padding: const EdgeInsets.only(left: 0.9),
                  child: Center(child: Text("DeepCode",style: TextStyle(color: Colors.white))),
                ),
                tileColor: Colors.black,
                subtitle:Center(child: Text("DeepCode's AI-based code review notifies you about critical bugs in real-time and shows you how to fix them. ",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.10web.io");
                },
                leading: Image(
                    height: 30,
                    width: 40,
                    image: AssetImage("images/10web.png")),
                title: Center(child: Text("10Web",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text("10Web's Automated Website Builder, Hosting, and PageSpeed Booster that automatically speeds up your websites and improves the Core Web Vitals.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.akkio.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/akkio.jpg")),
                title: Center(child: Text("Akkio",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Use your data to predict the future. Akkio is an easy-to-use, scalable, and affordable AI platform for real-time decision making.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.replit.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/replit.png")),
                title: Center(child: Text("Replit",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Run code live in your browser. Write and run code in 50+ languages online with Replit, a powerful IDE, compiler, & interpreter.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.durable.co");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/durableai.png")),
                title: Center(child: Text("Durable Ai",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text(" Durable gives you powerful AI tools to start and grow your business. ... All websites include hosting,",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
