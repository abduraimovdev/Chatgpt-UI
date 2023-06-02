import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF202123),
      width: 250,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Text(
                    "New Chat",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const ListTile(
              leading: Icon(
                Icons.messenger_outline,
                color: Colors.white,
              ),
              title: Text(
                "What is UX Design",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.messenger_outline,
                color: Colors.white,
              ),
              title: Text(
                "Color Palettes",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 350),
            Container(
              height: 1,
              width: 210,
              color: Colors.grey,
            ),
            const ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.white,
              ),
              title: Text(
                "Clear Conversation",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.person_2_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Upgrade to Plus",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.dark_mode_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.browser_updated_sharp,
                color: Colors.white,
              ),
              title: Text(
                "Updates and FAQs",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Log out",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
