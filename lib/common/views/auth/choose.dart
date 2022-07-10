import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 72),
              child: Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
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
                  "to see you!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 108, 114, 127),
                      fontFamily: 'JetBrains Mono'),
                )),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 0, 192, 249),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  backgroundColor: const Color.fromARGB(255, 0, 192, 249),
                ),
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 67, vertical: 0),
                    child: Text("Login".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white, fontSize: 20)))),
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
          ],
        ),
      ),
    );
  }
}
