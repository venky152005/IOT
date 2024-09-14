import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
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
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 124, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter Your Email ID',
                    labelText: 'Email ID',
                    suffixIcon: const Icon(Icons.email, color: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  onSaved: (value) {
                    _password = value!;
                  },
                  validator: (password) {
                    if (password!.isEmpty) {
                      return 'Please Enter Your Password';
                    } else if (password.length < 8 || password.length > 15) {
                      return 'Not a valid password';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 124, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Password',
                    labelText: 'Enter Password',
                    suffixIcon: const Icon(Icons.lock, color: Colors.orange),
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange[700]),
                  height: 50,
                  width: 293,
                  child: TextButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        if (_email == 'venky15.12.2005@gmail.com' &&
                            _password == 'venky152005') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomescreenWidget(),
                            ),
                          );
                        } else {
                          print('Enter Valid');
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
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 5),
                  child: Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpWidget(),
                    ),
                  );
                },
                child: const Text(
                  "Create an account",
                  style: TextStyle(
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.orange),
                ),
              )),
            ],
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
    return const Scaffold(
      body: Center(
        child: Text('hello'),
      ),
    );
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter HomePage'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
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
                        color: Color.fromRGBO(245, 124, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter Your Email ID',
                    labelText: 'Email ID',
                    suffixIcon: const Icon(Icons.email, color: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextFormField(
                  validator: (Name) {
                    if (Name!.isEmpty) {
                      return 'Please Enter Your Name';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 124, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    suffixIcon: const Icon(Icons.person, color: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextFormField(
                  validator: (password) {
                    if (password!.isEmpty) {
                      return 'Please Enter Your Password';
                    } else if (password.length < 8 || password.length > 15) {
                      return 'Not a valid password';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 124, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Password',
                    labelText: 'Enter Password',
                    suffixIcon: const Icon(Icons.lock, color: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  validator: (password) {
                    if (password!.isEmpty) {
                      return 'Please Enter Your Password';
                    } else if (password.length < 8 || password.length > 15) {
                      return 'Not a valid password';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 124, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Password',
                    labelText: 'Conform Password',
                    suffixIcon: const Icon(Icons.lock, color: Colors.orange),
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange[700]),
                  height: 50,
                  width: 293,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
