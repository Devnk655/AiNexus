import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LogoMaker extends StatefulWidget {
  const LogoMaker({Key? key}) : super(key: key);

  @override
  State<LogoMaker> createState() => _LogoMakerState();
}

class _LogoMakerState extends State<LogoMaker> {
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
        title: Text("LogoMaker"),
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
                  _launchUrl("www.canva.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/canva.png")),
                title: Center(child: Text("Canava",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(child: Text("Canva is a free-to-use online graphic design tool. "
                    "Use it to create social media posts, presentations, posters, videos, logos and more. ",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
