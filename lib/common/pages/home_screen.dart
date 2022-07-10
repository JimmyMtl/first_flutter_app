import 'package:first_flutter_app/common/views/auth/login.dart';
import 'package:first_flutter_app/common/views/auth/register.dart';
import 'package:first_flutter_app/common/views/home_view.dart';
import 'package:first_flutter_app/common/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../views/auth/choose.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 3);
  int _currentIndex = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          controller: _pageController,
          children: const <Widget>[
            HomeView(),
            ProfileView(),
            Choose(),
            Login(),
            Register()
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() => _currentIndex = index);

                _pageController.jumpToPage(index);
              },
              backgroundColor: Colors.grey.shade900,
              selectedItemColor: Colors.grey.shade200,
              unselectedItemColor: Colors.grey.shade700,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 15,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    const Image(
                        image: AssetImage(
                      "assets/images/profile.png",
                    )).image,
                    size: 15,
                  ),
                  label: 'Profile',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.connect_without_contact_outlined,
                    size: 15,
                  ),
                  label: 'Choose',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.login,
                    size: 15,
                  ),
                  label: 'Login',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.app_registration,
                    size: 15,
                  ),
                  label: 'Register',
                ),
              ]),
        ));
  }
}
