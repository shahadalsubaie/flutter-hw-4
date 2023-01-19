import 'package:flutter/material.dart';

extension GG on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: const Image(
                  image: NetworkImage(
                      "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/mabdqrswrouevnj5v8vz"),
                  fit: BoxFit.fitWidth,
                  width: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 13),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color(0xFF63C98E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 254, 255, 255),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Share()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF63C98E),
                        ),
                        color: const Color.fromARGB(223, 251, 253, 252),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF63C98E),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  'By selecting one or the other, you are agreeing to ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                alignment: FractionalOffset.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        'the ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 8, 8, 8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        'Acceptable Use Policy',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF63C98E),
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        '&',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 8, 8, 8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF63C98E),
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        '.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 8, 8, 8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF63C98E),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, bottom: 80),
              child: Text(
                'Log in',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 25, left: 25),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Email Address"))),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 25, left: 25),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Password"))),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyUp()),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 35),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFFB5E1C9),
                        minimumSize: const Size(380, 50),
                        backgroundColor: const Color(0xFF63C98E),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        )),
                    child: const Text('LogIn'),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Text(
                'or',
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: const Size(380, 50),
                  backgroundColor: const Color.fromARGB(255, 2, 2, 2),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  )),
              label: const Text('login with apple'),
              icon: const Icon(Icons.apple),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size(380, 50),
                    backgroundColor: const Color(0xFF47588e),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    )),
                label: const Text('login with facebook'),
                icon: const Icon(Icons.facebook),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Share extends StatelessWidget {
  const Share({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF63C98E),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100, right: 30, left: 30),
              child: Text(
                'share one calender with everyone',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 100,
                bottom: 120,
              ),
              child: Image(
                  image: NetworkImage(
                      'https://timetreeapp.com/intl/static/d38a367c405b64e7296fe0f3345301a5/30223/user_story.webp')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 90),
              child: Container(
                  child: const Text(
                      'Calenders can be shared with others,by                   sharing and checking events.')),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFFB5E1C9),
                  minimumSize: const Size(500, 50),
                  backgroundColor: const Color(0xFF63C98E),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  )),
              child: const Text('Next'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Pro1 extends StatelessWidget {
  const Pro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF63C98E),
      ),
      body: const SafeArea(
        child: Text('hh'),
      ),
    );
  }
}

class MyUp extends StatelessWidget {
  const MyUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF63C98E),
      ),
      body: SafeArea(
          child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 100, right: 30, left: 30),
            child: Text(
              'Uploading pictures and commenting on events ',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 8, 8, 8),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 100,
              bottom: 120,
            ),
            child: Image(
                image: NetworkImage(
                    'https://timetreeapp.com/intl/static/d38a367c405b64e7296fe0f3345301a5/30223/user_story.webp')),
          ),
        ],
      )),
    );
  }
}

class CalenderID extends StatelessWidget {
  const CalenderID({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF63C98E),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80, bottom: 80),
                child: Text(
                  'Calender ID',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Enter the calender ID"))),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyUp()),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 35),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xFFB5E1C9),
                          minimumSize: const Size(380, 50),
                          backgroundColor: const Color(0xFF63C98E),
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          )),
                      child: const Text('Confirm'),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text(
                  'Only alphabeteical, numerical,and underscore(_) characters can entered',
                  style: TextStyle(
                    color: Color.fromARGB(255, 179, 7, 7),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
