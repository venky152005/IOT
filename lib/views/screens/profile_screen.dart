import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Column(
          children: [
            const SizedBox(
              height: 177,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 3 / 4,
              decoration: const BoxDecoration(
                color: Color(0xFFB9B8B8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Name',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (name) {
                              if (name!.isEmpty) {
                                return 'Please Enter Your Name';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFD9FE74),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Enter your name',
                              hintStyle: const TextStyle(color: Colors.black),
                              labelText: 'Name',
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Email',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            validator: (email) {
                              if (email!.isEmpty) {
                                return 'Please Enter Your Email';
                              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$')
                                  .hasMatch(email)) {
                                return 'Not a valid email';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFD9FE74),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Enter Your Email ID',
                              hintStyle: const TextStyle(color: Colors.black),
                              labelText: 'Email ID',
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFD9FE74)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: const Color(0xFFD9FE74),
                              ),
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeWidget(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Back',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
