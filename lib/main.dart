import 'package:flutter/material.dart';
import 'package:iot_application/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late String _email, _password;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282725),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 100, left: 20),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Welcome back! \nPlease enter your details.',
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        initialValue: 'venky15.12.2005@gmail.com',
                        style: const TextStyle(color: Colors.white),
                        onSaved: (value) {
                          _email = value!;
                        },
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
                            borderSide:
                                const BorderSide(color: Color(0xFFB9B8B8)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFB9B8B8)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Enter Your Email ID',
                          labelText: 'Email ID',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        initialValue: 'venky152005',
                        style: const TextStyle(color: Colors.white),
                        obscureText: _obscureText,
                        onSaved: (value) {
                          _password = value!;
                        },
                        validator: (password) {
                          if (password!.isEmpty) {
                            return 'Please Enter Your Password';
                          } else if (password.length < 8 ||
                              password.length > 15) {
                            return 'Not a valid password';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFB9B8B8)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFB9B8B8)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Password',
                          labelText: 'Enter Password',
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                      ),
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
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              if (_email == 'venky15.12.2005@gmail.com' &&
                                  _password == 'venky152005') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HomescreenWidget(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Invalid Username or Password'),
                                  ),
                                );
                              }
                            }
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(color: Colors.black, fontSize: 18),
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
                                builder: (context) => const SignUpWidget(),
                              ),
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomescreenWidget extends StatelessWidget {
  const HomescreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/modern-styled-small-entryway.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF282725).withOpacity(0.9),
          )),
          Positioned(
            top: MediaQuery.of(context).size.height * 1 / 2,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(40),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFD9FE74)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FindDevice(),
                    ),
                  );
                },
                child: const Text(
                  'Find Ultrasonic Generator',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282725),
      body: SingleChildScrollView(
        child: Form(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 100, left: 20),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Welcome back! \nPlease enter your details.',
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
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
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Enter Your Email ID',
                          labelText: 'Email ID',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
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
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Enter your name',
                          labelText: 'Name',
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        validator: (password) {
                          if (password!.isEmpty) {
                            return 'Please Enter Your Password';
                          } else if (password.length < 8 ||
                              password.length > 15) {
                            return 'Not a valid password';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Password',
                          labelText: 'Enter Password',
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        validator: (password) {
                          if (password!.isEmpty) {
                            return 'Please Enter Your Password';
                          } else if (password.length < 8 ||
                              password.length > 15) {
                            return 'Not a valid password';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFB9B8B8),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Password',
                          labelText: 'Conform Password',
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                          ),
                        ),
                      ),
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
                            'Sign Up',
                            style: TextStyle(color: Colors.black, fontSize: 18),
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
                                builder: (context) => const MyApp(),
                              ),
                            );
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(color: Colors.white, fontSize: 18),
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
      ),
    );
  }
}
