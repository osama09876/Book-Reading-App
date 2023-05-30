import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          color: Colors.red,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 28,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover Books',
                  style: GoogleFonts.catamaran(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.all(70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
