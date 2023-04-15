import 'package:flutter/material.dart';
import 'components/chatCard.dart';
import 'components/scrollView.dart';
import 'components/search.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController editingController = TextEditingController();
  List<String> names = ['Jordan', 'Tim', 'James'];
  List<String> count = ['1', '', '9+'];
  List<String> displayPhoto = [
    'assets/chat/Jordan.png',
    'assets/chat/Tim.png',
    'assets/chat/James.png'
  ];
  List<String> labels = ['Likes', 'Tony', 'James', 'Jordan'];
  List<String> storyPhoto = [
    'assets/scrollView/likes.png',
    'assets/scrollView/Tony.png',
    'assets/scrollView/James.png',
    'assets/scrollView/Jordan.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5)
                ),
              )),
              Expanded(
                flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(80))
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: labels.length,
                      itemBuilder: (context, index) {
                        return ScrollViewStory(src: storyPhoto[index], label: labels[index], like: index == 0, isVerified: index == 1|| index == 2,);
                      }),
                ),
                const SizedBox(height: 15,),
                Search(editingController: editingController),
                Expanded(
                  child: ListView.builder(
                      itemCount: names.length,
                      itemBuilder: (context, index) {
                        return Chat(
                          src: displayPhoto[index],
                          label: names[index],
                          chat: 'Hii!',
                          isTyping: names[index] == 'James',
                          isVerified: names[index] != 'James',
                          isRead: names[index] == 'Tim',
                          message: count[index],);
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFFF5F5F5),
      leading: Row(
        children: const [
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/appbar/leading.png'),
            radius: 22,
          ),
        ],
      ),
      actions: [
        GestureDetector(
          child: Image.asset("assets/appbar/Vector.png"),
        ),
        const SizedBox(width: 10,)
      ],
      title: const Text("Puzzels",
        style: TextStyle(color: Color(0xFFFF5F8F), fontSize: 25),
      ),
      centerTitle: true,
    );
  }


}


