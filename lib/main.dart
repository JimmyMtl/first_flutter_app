import 'package:flutter/material.dart';
import 'common/pages/home_screen.dart';

void main() {
  runApp(const App());
}

class Palette {
  static MaterialColor kToDark = const MaterialColor(
    0xff1F2937, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffF2F6FA), //10%
      100: Color(0xffF0F1F6), //20%
      200: Color(0xffD0D4DA), //30%
      300: Color(0xff9CA3AF), //40%
      400: Color(0xff697282), //50%
      500: Color(0xff687382), //60%
      600: Color(0xff374151), //70%
      700: Color(0xff1F2937), //80%
      800: Color(0xff111827), //90%
      900: Color(0xff111F30), //100%
    },
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // ignore: unnecessary_new
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 17, 24, 39),
        primarySwatch: Palette.kToDark,
      ),
      home: const HomeScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }




// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   int _value = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _incrementValue() {
//     setState(() {
//       _value += 3;
//     });
//   }

//   void showAlert(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (context) => const AlertDialog(content: Text("hi !")));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //     title: Image.asset(
//       //       'assets/images/logo.png',
//       //       fit: BoxFit.contain,
//       //       width: 100,
//       //     ),
//       //     centerTitle: true,
//       //     automaticallyImplyLeading: true),
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.only(
      //     topRight: Radius.circular(15),
      //     topLeft: Radius.circular(15),
      //   ),
      //   child: BottomNavigationBar(
      //       backgroundColor: Colors.grey.shade900,
      //       selectedItemColor: Colors.grey.shade200,
      //       unselectedItemColor: Colors.grey.shade700,
      //       type: BottomNavigationBarType.fixed,
      //       items: <BottomNavigationBarItem>[
      //         const BottomNavigationBarItem(
      //           icon: Icon(Icons.call),
      //           label: 'Calls',
      //         ),
      //         const BottomNavigationBarItem(
      //           icon: Icon(Icons.camera),
      //           label: 'Camera',
      //         ),
      //         const BottomNavigationBarItem(
      //           icon: Icon(Icons.chat),
      //           label: 'Chats',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             const Image(
      //                 image: AssetImage(
      //               "assets/images/profile.png",
      //             )).image,
      //             size: 48,
      //           ),
      //           label: 'Profil',
      //         ),
      //       ]),
      // ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: const TextStyle(color: Colors.white),
//             ),
//             const Text(
//               'New teTextStyle(color:Colors.white)',
//               style: TextStyle(color: Colors.white),
//             ),
//             Text(
//               '$_value TextStyle(color:Colors.white)',
//               style: const TextStyle(color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementValue,
//         tooltip: 'Increment',
//         child: const Icon(Icons.abc_sharp),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class FirstRoute extends StatelessWidget {
//   const FirstRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             // Navigate to second route when tapped.
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
