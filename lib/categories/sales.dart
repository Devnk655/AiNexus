import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
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
        title: Text("Sales"),
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
                  _launchUrl("www.twain.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/twainimage.png")),
                title: Center(child: Text("Twain",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("World-class selling skills at your fingertips. "
                    "Use Twain for free to see what your sales pitch is missing.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.regie.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/regieai.png")),
                title: Center(child: Text("Regie",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text("With Regie.ai, go-to-market teams can easily create custom sales sequences and publish them to their sales engagement platform in just minutes using ..."
                      ,style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.lavender.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/lavender.png")),
                title: Center(child: Text("Lavender",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Lavender is an AI email coach that has everything you need to write better emails faster. ... Integrates into your existing workflow in 5 minutes.",
                      style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.warmer.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/warmer.png")),
                title: Center(child: Text("Warmer",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Warmer uses AI email personalization to write your email outreach. Increase replies, meetings and sales with dynamic personalization.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.octaneai.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/octane.png")),
                title: Center(child: Text("Octane",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Empower your DTC business with Octane AI's innovative AI Agents. Boost growth, optimize performance, and elevate customer engagement seamlessly.",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
