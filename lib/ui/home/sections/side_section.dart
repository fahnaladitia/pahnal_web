import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SideSection extends StatelessWidget {
  final Function(int index) onTap;
  const SideSection({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    "/images/profile.JPG",
                    fit: BoxFit.cover,
                    width: max(MediaQuery.of(context).size.width * 0.15, 250),
                    height: max(MediaQuery.of(context).size.width * 0.15, 250),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: Card(
                  // margin: const EdgeInsets.only(right: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  color: const Color(0xFF2C303A),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Muhammad Pahnal Aditia",
                          style: GoogleFonts.chakraPetch(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Flexible(
                          child: Text(
                            "Flutter Mobile Developer / Android Developer",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // LINKEDIN
                            IconButton(
                              onPressed: () {},
                              hoverColor: Colors.blueAccent,
                              color: Colors.white,
                              icon: const FaIcon(
                                FontAwesomeIcons.linkedin,
                              ),
                            ),
                            const SizedBox(width: 16),
                            // GITHUB
                            IconButton(
                              onPressed: () {},
                              hoverColor: Colors.blueAccent,
                              color: Colors.white,
                              icon: const FaIcon(
                                FontAwesomeIcons.github,
                              ),
                            ),
                            // INSTAGRAM
                            const SizedBox(width: 16),
                            IconButton(
                              onPressed: () {},
                              color: Colors.white,
                              hoverColor: Colors.blueAccent,
                              icon: const FaIcon(
                                FontAwesomeIcons.instagram,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // VERTICAL NAVIGATION FOR ABOUT SECTION, PORTFOLIO SECTION, AND CONTACT SECTION
          Container(
            margin: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ABOUT SECTION
                Card(
                  color: const Color(0xFF2C303A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  child: InkWell(
                    onTap: () => onTap(0),
                    borderRadius: BorderRadius.circular(16),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // CV ICON
                            FaIcon(
                              FontAwesomeIcons.addressCard,
                              color: Colors.white,
                            ),
                            SizedBox(height: 16),
                            // TITLE
                            Text(
                              'CV',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // PORTFOLIO SECTION
                Card(
                  color: const Color(0xFF2C303A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  child: InkWell(
                    onTap: () => onTap(1),
                    borderRadius: BorderRadius.circular(16),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // ICON
                            FaIcon(
                              FontAwesomeIcons.briefcase,
                              color: Colors.white,
                            ),
                            SizedBox(height: 16),
                            // TITLE
                            Text(
                              'Portfolio',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // CONTACT SECTION
                Card(
                  color: const Color(0xFF2C303A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  child: InkWell(
                    onTap: () => onTap(2),
                    borderRadius: BorderRadius.circular(16),
                    child: const Padding(
                      padding: EdgeInsets.all(24),
                      child: SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // ICON
                            FaIcon(
                              FontAwesomeIcons.addressBook,
                              color: Colors.white,
                            ),
                            SizedBox(height: 16),
                            // TITLE
                            Text(
                              'Contact',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
