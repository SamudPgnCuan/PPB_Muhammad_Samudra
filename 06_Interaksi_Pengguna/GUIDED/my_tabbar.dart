import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu Tab Bar",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4.0,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(
                icon: Icon(Icons.food_bank, size: 26),
                text: "Menu",
              ),
              Tab(
                icon: Icon(Icons.calendar_month, size: 26),
                text: "Calendar",
              ),
              Tab(
                icon: Icon(Icons.history, size: 26),
                text: "History",
              ),
            ],
          ),
          backgroundColor: Colors.amber[800],
        ),
        body: const TabBarView(
          children: [
            MenuContent(),
            CalendarContent(),
            HistoryContent(),
          ],
        ),
      ),
    );
  }
}

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              "Ini konten Menu :3",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Icon(Icons.food_bank, size: 26),
          ],
        ),
      ),
    );
  }
}

class CalendarContent extends StatelessWidget {
  const CalendarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Ini konten Calendar :3",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class HistoryContent extends StatelessWidget {
  const HistoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Ini konten History :3",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}