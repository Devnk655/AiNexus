import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Writing extends StatefulWidget {
  const Writing({Key? key}) : super(key: key);

  @override
  State<Writing> createState() => _WritingState();
}

class _WritingState extends State<Writing> {
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
        backgroundColor:Colors.black,
        title: Text("Writing"),
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
                  _launchUrl("www.copy.ai");
                },
                leading: Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("images/copyai.jpg")),
                title: Center(child: Text("CopyAi",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Generate High-Converting Marketing Copy In Seconds With CopyAI.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.jasper.ai");
                },
                leading: Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("images/japserai.png")),
                title: Center(child: Text("Jasper Ai",style: TextStyle(color: Colors.white))),
                tileColor:  Colors.black,
                subtitle:Center(
                  child: Text("Jasper's AI Engine starts by pulling from a cross-section of the best models out there, ",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.quillbot.com");
                },
                leading: Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("images/quillbot.png")),
                title: Center(child: Text("Quill Bot",style: TextStyle(color: Colors.white))),
                tileColor:  Colors.black,
                subtitle:Center(
                  child: Text("QuillBot integrates directly into Chrome and Microsoft Word.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.aiseo.ai");
                },
                leading: Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("images/aiseo.jpg")),

                title: Center(child: Text("AISEO",style: TextStyle(color: Colors.white))),
                tileColor:  Colors.black,
                subtitle:Center(child: Text("AISEO is a writing assistant which allow you to generate SEO optimized content",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.rytr.me");
                },
                leading: Image( height: 30,
                    width: 30,image: AssetImage("images/rytr.png"),),
                title: Center(child: Text("Rytr",style: TextStyle(color: Colors.white))),
                tileColor:  Colors.black,
                subtitle:Center(child: Text("Rytr is an AI writing assistant that helps you create high-quality content, ",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
