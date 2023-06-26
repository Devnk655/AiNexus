import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Copywriting extends StatefulWidget {
  const Copywriting({Key? key}) : super(key: key);

  @override
  State<Copywriting> createState() => _CopywritingState();
}

class _CopywritingState extends State<Copywriting> {
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
        title: Text("CopyWriting"),
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
                  _launchUrl("www.adcreative.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/adcreative.png")),
                title: Center(child: Text("Adcreative",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("AdCreative.ai is a data company that possesses one of the largest "
                    "databases of high-conversion-rate ad creatives. ",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.bertha.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/berthaimage.png")),
                title: Center(child: Text("BerthaAi",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Experience the full power of Bertha AI with Chat, Ask Me Anything and Long Form Content text generation and use anywhere in a web browser",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.simplified.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/simplified.jpg")),
                title: Center(child: Text(" Simplified",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(
                  child: Text("Simplified is the time saving, all in one app that your modern marketing team can use for collaboration.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.articleforge.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/articleforge.png")),
                title: Center(child: Text("ArticleForge",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Article Forge writes entire 1,500+ word articles automatically. Using advanced artificial intelligence and deep learning.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.writesonic.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/writesonic.jpg")),
                title: Center(child: Text("Writesonic",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("AI-powered content to boost your website's SEO and generate more traffic.",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
