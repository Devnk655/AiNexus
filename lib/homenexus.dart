import 'package:ainexus/categories/chatbots.dart';
import 'package:ainexus/categories/coding.dart';
import 'package:ainexus/categories/contentcreation.dart';
import 'package:ainexus/categories/copywriting.dart';
import 'package:ainexus/categories/designtools.dart';
import 'package:ainexus/categories/logomaker.dart';
import 'package:ainexus/categories/marketing.dart';
import 'package:ainexus/categories/music.dart';
import 'package:ainexus/categories/namegenerator.dart';
import 'package:ainexus/categories/research.dart';
import 'package:ainexus/categories/sales.dart';
import 'package:ainexus/categories/textfromvideo.dart';
import 'package:ainexus/categories/twittertools.dart';
import 'package:ainexus/categories/writing.dart';
import 'package:flutter/material.dart';

List items = [
  'Design Tools',
  'Content Creation',
  'Writing',
  'Coding',
  'Research',
  'Marketing',
  'CopyWriting',
  'Sales',
  'Chatbots',
  'Twitter Tools',
  'Music',
  'LogoMaker',
  'NameGenerator',
  'Text From Video',
];
List images = [
  "https://cdn-icons-png.flaticon.com/128/675/675579.png",
  "https://cdn-icons-png.flaticon.com/128/2503/2503644.png",
  "https://cdn-icons-png.flaticon.com/128/1027/1027530.png",
  "https://cdn-icons-png.flaticon.com/128/1006/1006363.png",
  "https://cdn-icons-png.flaticon.com/128/3270/3270751.png",
  "https://cdn-icons-png.flaticon.com/128/10841/10841722.png",
  "https://cdn-icons-png.flaticon.com/128/2600/2600297.png",
  "https://cdn-icons-png.flaticon.com/128/1029/1029023.png",
  "https://cdn-icons-png.flaticon.com/128/3649/3649460.png",
  "https://cdn-icons-png.flaticon.com/128/3536/3536424.png",
  "https://cdn-icons-png.flaticon.com/128/2829/2829075.png",
  "https://cdn-icons-png.flaticon.com/128/7927/7927080.png",
  "https://cdn-icons-png.flaticon.com/128/3073/3073409.png",
  "https://cdn-icons-png.flaticon.com/128/9972/9972006.png"
];

class AiNexus extends StatefulWidget {
  const AiNexus({super.key});

  @override
  State<AiNexus> createState() => _AiNexusState();
}

class _AiNexusState extends State<AiNexus> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        centerTitle: true,
        title: Text("Categories"),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: GridView.builder(
        itemCount: 14, // Total number of items in the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10, // Number of columns in the grid
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              final redirect = index;
              switch(redirect){
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DesignTools(),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContentCreation(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Writing(),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Coding(),
                    ),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Research(),
                    ),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Marketing(),
                    ),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Copywriting(),
                    ),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sales(),
                    ),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatBots(),
                    ),
                  );
                  break;
                case 9:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TwitterTools(),
                    ),
                  );
                  break;
                case 10:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Music(),
                    ),
                  );
                  break;
                case 11:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogoMaker(),
                    ),
                  );
                  break;
                case 12:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NameGenerator(),
                    ),
                  );
                  break;
                case 13:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextFromVideo(),
                    ),
                  );
                  break;
              }
            },
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Border radius
                side: BorderSide(
                    color: Colors.white, width: 3.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    images[index],
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 20),
                  Text(items[index],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
