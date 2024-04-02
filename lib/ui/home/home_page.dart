import 'dart:math';
import 'dart:ui';

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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final AutoScrollController _scrollController = AutoScrollController();
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  double value = 0;
  int index = 0;

  double get sectionHeight => MediaQuery.of(context).size.height;

  void _scrollToIndex(int index) {
    setState(() {
      this.index = index;
    });
    final isHide = index == 3;
    if (_animationController.value == 0) {
      _animationController.forward();
    } else if (isHide && _animationController.value == 1) {
      _animationController.reverse();
    }
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
    _animationController = AnimationController(
      value: 1,
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    )..addListener(() {
        setState(() {});
      });

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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SideSection(
              onTap: _scrollToIndex,
              currentIndex: index,
              isExpanded: _animation.value == 1,
            ),
            if (_animation.value > 0)
              Flexible(
                child: SizedBox(
                  width: lerpDouble(0, MediaQuery.of(context).size.width * .7, _animation.value),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: _buildDisplay(),
                  ),
                ),
              ),
            // Animation with Grow Transition for the main content
          ],
        ),
      ),
    );
  }

  Widget _buildDisplay() {
    switch (index) {
      case 0:
        return const CvSection();
      case 1:
        return const PortofolioSection();
      case 2:
        return const ContactSection();
      default:
        return const CvSection();
    }
  }
}
