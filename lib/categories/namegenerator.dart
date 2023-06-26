import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NameGenerator extends StatefulWidget {
  const NameGenerator({Key? key}) : super(key: key);

  @override
  State<NameGenerator> createState() => _NameGeneratorState();
}

class _NameGeneratorState extends State<NameGenerator> {
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
        title: Text("NameGenerator"),
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
                  _launchUrl("www.namelix.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/namelix.png")),
                title: Center(child: Text("Namelix",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Namelix generates short, branded names that are relevant to your business idea. When you save a name, "
                    "the algorithm learns your preferences and gives you better ",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
