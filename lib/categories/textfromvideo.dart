import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextFromVideo extends StatefulWidget {
  const TextFromVideo({Key? key}) : super(key: key);

  @override
  State<TextFromVideo> createState() => _TextFromVideoState();
}

class _TextFromVideoState extends State<TextFromVideo> {
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
        title: Text("TextFromVideo"),
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
                  _launchUrl("www.steve.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/steveai.png")),
                title: Center(child: Text("Steve ai",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Steve.AI is an online Video making software that helps anyone to create Videos and animations in seconds.",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
