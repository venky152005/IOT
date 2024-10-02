import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282725),
      appBar: AppBar(
        backgroundColor: const Color(0xFF282725),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ClashDisplay',
              color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.add_to_photos,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.asset(
                'images/Naveen Sir.jpg',
                height: 150,
                width: 150,
              ),
            ),
            const Text(
              'Naveen',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'ClashDisplay',
                color: Colors.white,
              ),
            ),
            const Text(
              'naveensnlbe@gmail.com',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'ClashDisplay',
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              height: 30,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB9B8B8),
                ),
                onPressed: () {},
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'General',
                  style: TextStyle(
                      fontFamily: 'ClashDisplay',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFB9B8B8)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xFFB9B8B8),
                ),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  'Account',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
