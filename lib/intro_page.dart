import 'package:flutter/material.dart';
import 'package:scaffol_home_task/chat_page.dart';

class IntroPage extends StatefulWidget {
  static const String id = "UI_one";

  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 156, 10),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/imag_bagraut.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/logo.png"),
              height: 157,
              width: 157,
            ),
            const SizedBox(height: 65),
            const Text(
              "Welcome To ChatGPT",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFF8BFF),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "The dialogue format makes it possible for\nChatGPT to answer followup questions,\nadmit its mistakes, challenge incorrect\npremises, and reject inappropriate\nrequests.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFF8BFF),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, ChatPage.id);
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xFFFF8BFF),
                  width: 3,
                ),
                fixedSize: Size(
                  MediaQuery.of(context).size.width * .9,
                  60,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Try ChatGPT",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFF8BFF),
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Color(0xFFFF8BFF),
                    size: 35,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
