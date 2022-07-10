import 'package:first_flutter_app/common/components/CustomWidgets/LabeledCheckBox/LabeledCheckBox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

bool isChecked = false;

class _LoginState extends State<Login> {
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
              "Welcome Back",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Login to your account",
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
                    prefixIcon: Icon(FontAwesomeIcons.lock,
                        color: Color.fromARGB(255, 0, 192, 249)),
                    fillColor: Color.fromARGB(255, 24, 24, 27),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 55, 65, 81))),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(children: [
                  LabeledCheckbox(
                    // checkColor: Colors.white,
                    // fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    label: "Remember me",
                    // shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(4)),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password ?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 108, 114, 127))))
                ])),
            const Spacer(),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 192, 249),
                  elevation: 5,
                ),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                    child: Text("Login".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white, fontSize: 20)))),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
