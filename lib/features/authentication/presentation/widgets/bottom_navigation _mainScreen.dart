import 'package:flutter/material.dart';
import 'package:purple_room/Screens/cart_screen.dart';
import 'package:purple_room/Screens/chat_screen.dart';
import 'package:purple_room/Screens/gift_ebook.dart';
import 'package:purple_room/Screens/home4counselling.dart';
import 'package:purple_room/Screens/landing_home_screen.dart';
import 'package:purple_room/Screens/profile_screen.dart';

class MainScreenHolder extends StatefulWidget {
  @override
  _MainScreenHolderState createState() => _MainScreenHolderState();
}

class _MainScreenHolderState extends State<MainScreenHolder> {
  int currentTabbedIndex = 0;

  List<Widget> screens;
  Widget currentPage;

  CounselHome homeCounselScreen;
  CartScreen cartScreen;
  ChatScreen chatScreen;
  GiftBook giftBook;
  ProfileScreen profileScreen;

  @override
  void initState() {
    super.initState();
    homeCounselScreen = CounselHome();
    cartScreen = CartScreen();
    chatScreen = ChatScreen();
    giftBook = GiftBook();
    profileScreen = ProfileScreen();

    screens = [
      homeCounselScreen,
      chatScreen,
      cartScreen,
      giftBook,
      profileScreen,
    ];
    currentPage = homeCounselScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabbedIndex = index;
            currentPage = screens[index];
          });
        },
        currentIndex: currentTabbedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFFFF8F00),
        unselectedItemColor: Color(0xFF21012B),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text("Home"),
          )
        ],
      ),
      body: currentPage,
    );
  }
}
