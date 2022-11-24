import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Twitter",
        theme: ThemeData(
            primaryColor: Color.fromARGB(255, 88, 166, 245),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Twitter());
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044292913720471622/AjAurachorn2021_pic.png?width=642&height=676',
      postText: 'ขอให้ นศ ที่เข้าฝึกงานทุกคนมาแนะนำตัว\nพร้อมชื่อพี่เลี้ยงที่ได้ในการฝึกงาน',
      name: "Aom_Panita",
      account: "@HR_PttGCME",
      Image_01: "",
    ),
      Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044291941380132954/LINE_ALBUM_photo_220119_2.jpg',
      postText: '',
      name: "Non_Keerintorn",
      account: "@BU",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/1044287327830286376/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044291416827891813/3_4_.jpg',
      postText: '',
      name: "Preaw_Chanoknard",
      account: "@TU",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/1044291761654222868/image.png",
    ),
     Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/755808468811644978/1044298532485611531/fc3d3c80312967c8.jpg?width=521&height=676',
      postText: '',
      name: "JOB_Krittapark",
      account: "@KMITL",
      Image_01: "https://media.discordapp.net/attachments/755808468811644978/1044298852146102433/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044567485917188106/81902770_1543286952490469_5649042975439716352_n.jpg?width=541&height=676',
      postText: '',
      name: "Po_Sinchu",
      account: "@CU",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/1044567121457324093/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044294175606181950/316376942_1324307448314942_7939912037998184620_n.jpg',
      postText: '',
      name: "Bush_Chakkapat",
      account: "@BU",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/1044294665886781440/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044300146214707261/image_1.png',
      postText: 'ให้นศทุกคนเตรียมนำเสนอ Final Presentation\nเดี่ยวพี่่HRจะส่งหัวข้อการนำเสนอให้',
      name: "DR.Thammarat",
      account: "@PJ_PttGCME",
      Image_01: "",
    ),
       Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044292913720471622/AjAurachorn2021_pic.png?width=642&height=676',
      postText: 'หัวข้อการนำเสนอ Final Presentation\n-แนะนำตัว\n-วัตถุประสงค์/ความคาดหวังการฝึกงาน\n-งานที่ได้รับมอบหมาย\n-ปัญหาที่พบ\n-แนวทางการแก้ปัญหา\n-หลัก4 Core Behaviors\n-สิ่งที่ได้รับจากการฝึกงาน\n***พี่จะส่งTemplateให้ทางเมล***',
      name: "Aom_Panita",
      account: "@HR_PttGCME",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/1044300687447687238/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044291941380132954/LINE_ALBUM_photo_220119_2.jpg',
      postText: 'Final Presentation\nคีรินทรณ์ บ่อน้อย',
      name: "Non_Keerintorn",
      account: "@BU",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/1044309242049478737/image.png?width=1440&height=260",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044292913720471622/AjAurachorn2021_pic.png?width=642&height=676',
      postText: 'บรรยากาศ การนำเสนอ Final Presentation',
      name: "Aom_Panita",
      account: "@HR_PttGCME",
      Image_01: "https://media.discordapp.net/attachments/789152271119286272/981379039954620456/unknown.png?width=1202&height=676",
    ),
    
  ];

 var tweetShow = [];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.discordapp.net/attachments/789152271119286272/1044291941380132954/LINE_ALBUM_photo_220119_2.jpg'),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          centerTitle: true,
          title: Text(
            "Twitter",
            style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 77, 192, 238),
                fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_off_outlined, Colors.blue),
            buildIconButton(Icons.notifications_outlined, Colors.blue),
            buildIconButton(Icons.email_outlined, Colors.blue)
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetShow.insert(0, tweetList[counter]);
            counter++;

            // tweetList.add(Tweet(
            //   avatar_url:
            //       'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png',
            //   postText: "My Tweet",
            //   name: "Joblok0",
            //   account: "@BUEN003",
            // ));
            // tweetList.insert(
            //     0,
            //     Tweet(
            //       avatar_url:
            //           'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png',
            //       postText: "My Tweet",
            //       name: "Joblok0",
            //       account: "@BUEN003",
            //     ));
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetShow[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetShow.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: () {},
    );
  }
}