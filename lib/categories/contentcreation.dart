import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentCreation extends StatefulWidget {
  const ContentCreation({Key? key}) : super(key: key);

  @override
  State<ContentCreation> createState() => _ContentCreationState();
}

class _ContentCreationState extends State<ContentCreation> {
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
        title: Text("ContentCreation"),
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
                  _launchUrl("www.writesonic.com");
                },
                leading: Image(
                  height: 30,
                    width: 30,
                    image: AssetImage("images/writesonic.jpg")),
                title: Center(child: Text("Writesonic",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(child: Text("AI-powered content to boost your website's SEO and generate more traffic.",style: TextStyle(color: Colors.white),)) ,
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
                  _launchUrl("www.beautiful.ai");
                },
                leading: Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("images/beautifulai.png")),
                title: Center(child: Text("Beautifulai",style: TextStyle(color: Colors.white),)),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text(" Beautiful.ai is the best presentation software for teams. ",style: TextStyle(color: Colors.white),),
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
                  _launchUrl("www.steve.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/steveai.png")),
                title: Center(child: Text("Steve ai",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Steve.AI is an online Video making software that helps anyone to create Videos and animations in seconds.",style: TextStyle(color: Colors.white),),
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
                  _launchUrl("www.tome.app");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/tome.png")),
                title: Center(child: Text("Tome",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Tome is the world's first generative storytelling format to truly harness the power of artificial intelligence ...",style: TextStyle(color: Colors.white),)) ,
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
                  _launchUrl("www.murf.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/murfai.png")),
                title: Center(child: Text("Murf ai",style: TextStyle(color: Colors.white),)),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Murf offers high quality natural sounding AI voices for your projects. ",style: TextStyle(color: Colors.white),)) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
