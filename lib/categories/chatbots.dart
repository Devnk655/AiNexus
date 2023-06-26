import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatBots extends StatefulWidget {
  const ChatBots({Key? key}) : super(key: key);

  @override
  State<ChatBots> createState() => _ChatBotsState();
}

class _ChatBotsState extends State<ChatBots> {
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
        title: Text("ChatBots"),
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
                  _launchUrl("www.yatterplus.in");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/yatterplus.jpg")),
                title: Center(child: Text(" YatterPlus",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(child: Text("Yatter + is an AI powered WhatsApp chatbot that will simplify your life. "
                    "Get answer to any of your queries, questions or concerns in seconds.",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.quickchat.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/quickchat.png")),
                title: Center(child: Text("QuickChat",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text(" Quickchat AI empowers companies to build their own multilingual AI assistants powered by generative AI models such as GPT‑3.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.typewise.app");
                },
                leading: Image(
                    height: 40,
                    width: 50,
                    image: AssetImage("images/typewiseimage.png")),
                title: Center(child: Text("Typewise",style: TextStyle(color: Colors.white))),
                tileColor: Colors.black,
                subtitle:Center(
                  child: Text("Typewise helps customer service and sales teams save cost, decrease response and resolution times, and increase customer satisfaction.",style: TextStyle(color: Colors.white)),
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
                  _launchUrl("www.cohere.com");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/cohore.jpg")),
                title: Center(child: Text("Cohere",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(child: Text("Good and Nice ChatBot",style: TextStyle(color: Colors.white))) ,
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
                  _launchUrl("www.kaizan.ai");
                },
                leading: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage("images/kaizan.png")),
                title: Center(child: Text("Kaizan",style: TextStyle(color: Colors.white))),
                tileColor:Colors.black,
                subtitle:Center(child: Text("Kaizan is a Client Intelligence Platform for Client Success teams to retain and grow client revenue.",style: TextStyle(color: Colors.white))) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
