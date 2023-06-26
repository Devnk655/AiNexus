import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Marketing extends StatefulWidget {
  const Marketing({Key? key}) : super(key: key);

  @override
  State<Marketing> createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
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
        title: Text("Marketing"),
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
                  _launchUrl("www.simplified.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/simplified.jpg")),
                title: Center(child: Text("Simplified",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Simplified is the time saving, all in one app that your modern marketing team can use for collaboration.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.mutinyhq.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/mutiny.png")),
                title: Center(child: Text(" Mutiny",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Mutiny is a no-code AI platform that helps marketers convert their top of funnel demand into revenue, without engineers.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.contentedge.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/contentedge.png")),
                title: Center(child: Text("ContentEdge",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text("Our copywriting generator tool harnesses the power of artificial intelligence to write pieces that sounds human-made. ",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.peppercontent.io");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/pappertype.png")),
                title: Center(child: Text("PapperType",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(child: Text("Peppertype just got better! · Leverage the AI-powered platform to ideate, 		"
                    "create, distribute, and measure your content and prove your content marketing",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.copysmith.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/copysmith.png")),
                title: Center(child: Text("CopySmith",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Perfect Marketing ai tool",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
