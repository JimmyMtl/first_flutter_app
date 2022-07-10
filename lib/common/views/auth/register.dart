import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

bool isChecked = false;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 36,
                      )),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Text(
              "Nice",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "to meet you!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 108, 114, 127),
                      fontFamily: 'JetBrains Mono'),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(FontAwesomeIcons.userTie,
                        color: Color.fromARGB(255, 0, 192, 249)),
                    fillColor: Color.fromARGB(255, 24, 24, 27),
                    hintText: 'Username',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 55, 65, 81))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(FontAwesomeIcons.envelope,
                        color: Color.fromARGB(255, 0, 192, 249)),
                    fillColor: Color.fromARGB(255, 24, 24, 27),
                    hintText: 'Email',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 55, 65, 81))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(FontAwesomeIcons.lock,
                        color: Color.fromARGB(255, 0, 192, 249)),
                    fillColor: Color.fromARGB(255, 24, 24, 27),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 55, 65, 81))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.verified_user,
                        color: Color.fromARGB(255, 0, 192, 249)),
                    fillColor: Color.fromARGB(255, 24, 24, 27),
                    hintText: 'Confirm Password',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 55, 65, 81))),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Text(
                  "By registering, you are agreeing to our Terms of use and Privacy Policy",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 108, 114, 127),
                      fontFamily: 'JetBrains Mono'),
                )),
            const Spacer(),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 0, 192, 249),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 0, 192, 249))),
                ),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                    child: Text("Register".toUpperCase(),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 192, 249),
                            fontSize: 20)))),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
