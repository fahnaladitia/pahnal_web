import 'package:flutter/material.dart';
import 'package:pahnal_web/ui/components/side_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343849),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Hero(
              tag: "pahnal",
              child: SideSection(currentIndex: 0),
            ),
          ),
        ),
      ),
    );
  }
}
