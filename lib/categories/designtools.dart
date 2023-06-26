import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DesignTools extends StatefulWidget {
  const DesignTools({Key? key}) : super(key: key);

  @override
  State<DesignTools> createState() => _DesignToolsState();
}

class _DesignToolsState extends State<DesignTools> {
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
          title: Text("Design tools"),
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
                  _launchUrl("www.autodraw.com");
                },
                leading: Image.network( "https://www.autodraw.com/assets/images/logo.gif"),
                title: Center(child: Text("AutoDraw",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
        subtitle:Center(child: Text(" Fast drawing for everyone required",style: TextStyle(color: Colors.white),)) ,
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
                  _launchUrl("www.flair.ai");
                },
                leading: Image.network( "https://pbs.twimg.com/profile_images/1613167943923208192/a4iZRgUQ_400x400.jpg"),
                title: Center(child: Text("Flair Ai",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text(" The AI design tool for Branded "
                      "Content.",style: TextStyle(color: Colors.white),),
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
                  _launchUrl("www.booth.ai");
                },
                leading: Image.network( height: 70,
                    width: 70, "https://uploads-ssl.webflow.com/63b51f507abffb8927deff06/645bf3b495abf967b95c498d_Booth-Full-p-500.png"),
                title: Center(child: Text("Booth Ai",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Fast, inexpensive, high-quality  "
                      "images",style: TextStyle(color: Colors.white),),
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
                  _launchUrl("www.clipdrop.co");
                },
                leading: CircleAvatar(
                  radius: 40,
                  child: Image( height: 70,
                      width: 70,image: AssetImage("images/clipdrop.png"),),
                ),
                title: Center(child: Text("ClipDro",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(child: Text("To remove the background image",style: TextStyle(color: Colors.white),)) ,
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
                  _launchUrl("www.stockimg.ai");
                },
                leading: CircleAvatar(
                  radius: 40,
                  child: Image( height: 70,
                    width: 70,image: AssetImage("images/stockimg.jpg"),),
                ),
                title: Center(child: Text("StockimgAi")),
                tileColor: Colors.black,
                subtitle:Center(child: Text("AI image generation for teams - ",style: TextStyle(color: Colors.white),)) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
