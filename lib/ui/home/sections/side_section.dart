import 'dart:math';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SideSection extends StatelessWidget {
  final Function(int index) onTap;
  final bool isExpanded;
  final int currentIndex;
  const SideSection({
    super.key,
    required this.onTap,
    required this.isExpanded,
    required this.currentIndex,
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
                    "assets/images/profile.JPG",
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
                              onPressed: () {
                                launchUrlString("https://www.linkedin.com/in/pahnaladitia/");
                              },
                              hoverColor: Colors.blueAccent,
                              color: Colors.white,
                              icon: const FaIcon(
                                FontAwesomeIcons.linkedin,
                              ),
                            ),
                            const SizedBox(width: 16),
                            // GITHUB
                            IconButton(
                              onPressed: () {
                                launchUrlString("https://github.com/fahnaladitia");
                              },
                              hoverColor: Colors.blueAccent,
                              color: Colors.white,
                              icon: const FaIcon(
                                FontAwesomeIcons.github,
                              ),
                            ),
                            // INSTAGRAM
                            const SizedBox(width: 16),
                            IconButton(
                              onPressed: () {
                                launchUrlString("https://www.instagram.com/fahnaladitia07/");
                              },
                              color: Colors.white,
                              hoverColor: Colors.blueAccent,
                              icon: const FaIcon(
                                FontAwesomeIcons.instagram,
                              ),
                            ),
                            // EMAIL
                            const SizedBox(width: 16),
                            IconButton(
                              onPressed: () {
                                launchUrlString("mailto:fahnaladitia07@gmail.com");
                              },
                              color: Colors.white,
                              hoverColor: Colors.blueAccent,
                              icon: const FaIcon(
                                FontAwesomeIcons.envelope,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // BUTTON FOR DOWNLOAD CV
                        ElevatedButton(
                          onPressed: () {
                            html.AnchorElement anchorElement = html.AnchorElement(href: 'assets/files/cv.pdf');
                            anchorElement.download = 'pahnal_cv.pdf';
                            anchorElement.click();
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF2C303A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Download CV",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
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
                  // color: const Color(0xFF2C303A),
                  color: currentIndex == 0 && isExpanded
                      ? const Color.fromARGB(255, 119, 127, 165)
                      : const Color(0xFF2C303A),
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
                  color: currentIndex == 1 && isExpanded
                      ? const Color.fromARGB(255, 119, 127, 165)
                      : const Color(0xFF2C303A),
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
                // Card(
                //   color: currentIndex == 2 && isExpanded
                //       ? const Color.fromARGB(255, 119, 127, 165)
                //       : const Color(0xFF2C303A),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(16),
                //     side: const BorderSide(
                //       color: Colors.white,
                //       width: 2,
                //     ),
                //   ),
                //   margin: EdgeInsets.zero,
                //   child: InkWell(
                //     onTap: () => onTap(2),
                //     borderRadius: BorderRadius.circular(16),
                //     child: const Padding(
                //       padding: EdgeInsets.all(24),
                //       child: SizedBox(
                //         width: 80,
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           mainAxisSize: MainAxisSize.min,
                //           children: [
                //             // ICON
                //             FaIcon(
                //               FontAwesomeIcons.addressBook,
                //               color: Colors.white,
                //             ),
                //             SizedBox(height: 16),
                //             // TITLE
                //             Text(
                //               'Contact',
                //               style: TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 18,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 16),
                if (isExpanded)
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
                      onTap: () => onTap(3),
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
                                FontAwesomeIcons.arrowLeft,
                                color: Colors.white,
                              ),
                              SizedBox(height: 16),
                              // TITLE
                              Text(
                                'Back',
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
