import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pahnal_web/ui/home/sections/contact_section.dart';
import 'package:pahnal_web/ui/home/sections/cv_section.dart';
import 'package:pahnal_web/ui/home/sections/portofolio_section.dart';
import 'package:pahnal_web/ui/home/sections/side_section.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AutoScrollController _scrollController = AutoScrollController();

  double value = 0;

  double get sectionHeight => MediaQuery.of(context).size.height;

  void _scrollToIndex(int index) {
    _scrollController.scrollToIndex(
      index,
      duration: const Duration(milliseconds: 500),
      preferPosition: AutoScrollPosition.begin,
    );
  }

  @override
  void initState() {
    super.initState();
    // _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        setState(() {
          const start = 0;
          const end = 100;

          value = (_scrollController.offset - start) / (end - start);
          value = max(0, min(1, value));
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343849),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SideSection(
              onTap: _scrollToIndex,
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AutoScrollTag(
                      key: const ValueKey(0),
                      index: 0,
                      controller: _scrollController,
                      child: const CvSection(),
                    ),
                    // Section Projects
                    AutoScrollTag(
                      controller: _scrollController,
                      key: const ValueKey(1),
                      index: 1,
                      child: const PortofolioSection(),
                    ),
                    // Section Contact
                    AutoScrollTag(
                      controller: _scrollController,
                      key: const ValueKey(2),
                      index: 2,
                      child: const ContactSection(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   controller: _scrollController,
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       AutoScrollTag(
      //         key: const ValueKey(0),
      //         index: 0,
      //         controller: _scrollController,
      //         child: AboutSection(sectionHeight: sectionHeight),
      //       ),
      //       // Section Projects
      //       AutoScrollTag(
      //         controller: _scrollController,
      //         key: const ValueKey(1),
      //         index: 1,
      //         child: ProjectSection(sectionHeight: sectionHeight),
      //       ),
      //       // Section Contact
      //       AutoScrollTag(
      //         controller: _scrollController,
      //         key: const ValueKey(2),
      //         index: 2,
      //         child: CvSection(sectionHeight: sectionHeight),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  const MyCustomClipper();

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.arcToPoint(
      Offset(size.width / 2, size.height),
      radius: const Radius.circular(60),
    );
    path.arcToPoint(
      Offset(size.width / 2, 0),
      radius: const Radius.circular(60),
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
