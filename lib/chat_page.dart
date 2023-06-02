import 'package:flutter/material.dart';

import 'components.dart';

class ChatPage extends StatefulWidget {
  static const String id = "ui_two";

  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffoldni ma'lumotlarini boshqarish uchun key qo'yildi !
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF1E1E1E),
      // Body ni ichiga Single child scroll view qoyildi sabab inputlar to'gri ko'rinishga tushish uchun
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: openDrawerBtn,
                          // Drawerni Ochib beradi shu Buyruq

                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Row(
                          children: [
                            Image(
                              image: AssetImage("assets/images/Ellipse.png"),
                              height: 45,
                              width: 45,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "What is UX Design?",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFF444654),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 19, right: 40, bottom: 38, top: 38),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage("assets/images/img_gpt.png"),
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(width: 13),
                            // Flexible bu Ekrandan o'tib yoki chiqib ketgan widgetlarni moslashtirilgan tartibga solib beradi
                            Flexible(
                              child: Text(
                                "UX design, or user experience design, refers to the process of designing products or services that are intuitive, accessible, and easy to use for the end user. The goal of UX design is to create products and services that are useful, usable, and desirable, and that meet the needs and expectations of the user.",
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Icon(Icons.abc,
                                color: Colors.transparent, size: 30),
                            SizedBox(width: 13),
                            Flexible(
                              child: Text(
                                "UX designers use a range of techniques and tools to understand the user's needs, behaviors, and preferences, and to create designs that are tailored to those needs. They may conduct user research, create personas, develop wireframes and prototypes, conduct usability testing, and analyze user feedback in order to improve the user experience.",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * .55,
                            35,
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("assets/images/icon.png"),
                              height: 13,
                              width: 13,
                            ),
                            SizedBox(width: 13),
                            Text(
                              "Regenerate Response",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(17),
                            child: Image(
                              image: AssetImage(
                                "assets/images/tg_icon.png",
                              ),
                              height: 17,
                              width: 17,
                            ),
                          ),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * .9,
                            maxHeight: 67,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: const Color(0xFF444654),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            children: [
                              TextSpan(text: "ChatGPT Mar 14 Version. "),
                              TextSpan(text: "Free Research Preview."),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const LeftDrawer(),
    );
  }

  void openDrawerBtn() {
    _scaffoldKey.currentState!.openDrawer();
  }
}
