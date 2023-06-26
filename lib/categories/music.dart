import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  Future<void> _launchUrl(String url) async{
    final Uri uri = Uri(scheme:"https",host: url);
    if(!await launchUrl(uri,mode:LaunchMode.externalApplication)){
      throw "Cannot not launch url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Music"),
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
                  _launchUrl("www.boomy.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/boomy.png")),
                title: Center(child: Text("Boomy",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Make music with Boomy AI · Create original songs in seconds, even if you've never made music before · Submit your songs to streaming platforms and get paid",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.audoir.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/amper.png")),
                title: Center(child: Text("Amper",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Amper Music Composition Tools can compose custom music in seconds. The main product offering, called Score, generates soundtrack music that",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.brain.fm");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/brainfm.jpg")),
                title: Center(child: Text(" Brain FM",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text("Brain.fm's focus music is made to help you work better, "
                      "by blending into the background so you can focus distraction-free... all while stimulating the brain",style: TextStyle(color: Colors.white)

                  ),
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
