import 'package:universal_html/html.dart' as html;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SideSection extends StatelessWidget {
  final int currentIndex;
  const SideSection({
    super.key,
    this.currentIndex = -1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
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
                        "Mobile Developer (Flutter)",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
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
                        // const SizedBox(width: 16),
                        // IconButton(
                        //   onPressed: () {
                        //     launchUrlString("https://www.instagram.com/fahnaladitia07/");
                        //   },
                        //   color: Colors.white,
                        //   hoverColor: Colors.blueAccent,
                        //   icon: const FaIcon(
                        //     FontAwesomeIcons.instagram,
                        //   ),
                        // ),
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
                    // BUTTON FOR OPEN CV
                    ElevatedButton(
                      onPressed: () {
                        const urlGoogleDrive =
                            "https://drive.google.com/file/d/1sOYYY1OHhx3fb0NO-Q_LdDvOXYI1psT7/view?usp=sharing";

                        html.window.open(urlGoogleDrive, "cv");
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
                          "OPEN CV",
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
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    currentIndex == 1 ? Colors.white.withOpacity(0.5) : Colors.transparent,
                  ),
                  elevation: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return 10;
                    }
                    return 0;
                  }),
                  shadowColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white.withOpacity(0.5);
                    }
                    return null;
                  }),
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white.withOpacity(0.5);
                    }

                    return null;
                  }),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  iconSize: MaterialStateProperty.all(16),
                ),
                onPressed: () {
                  context.go("/cv");
                },
                icon: const FaIcon(FontAwesomeIcons.addressCard),
                label: const Text("CV"),
              ),
              const SizedBox(width: 24),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    currentIndex == 2 ? Colors.white.withOpacity(0.5) : Colors.transparent,
                  ),
                  elevation: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return 10;
                    }

                    return 0;
                  }),
                  shadowColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white.withOpacity(0.5);
                    }

                    return null;
                  }),
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white.withOpacity(0.5);
                    }

                    return null;
                  }),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  iconSize: MaterialStateProperty.all(16),
                ),
                onPressed: () {
                  context.go("/portofolio");
                },
                icon: const FaIcon(FontAwesomeIcons.briefcase),
                label: const Text("Portofolio"),
              ),
              const SizedBox(width: 24),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    currentIndex == 3 ? Colors.white.withOpacity(0.5) : Colors.transparent,
                  ),
                  elevation: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return 10;
                    }

                    return 0;
                  }),
                  shadowColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white.withOpacity(0.5);
                    }

                    return null;
                  }),
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.white.withOpacity(0.5);
                    }

                    return null;
                  }),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  iconSize: MaterialStateProperty.all(16),
                ),
                onPressed: () {
                  context.go("/scratch");
                },
                icon: const FaIcon(FontAwesomeIcons.code),
                label: const Text("scratch"),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                currentIndex == 0 ? Colors.white.withOpacity(0.5) : Colors.transparent,
              ),
              elevation: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return 10;
                }

                return 0;
              }),
              shadowColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.white.withOpacity(0.5);
                }

                return null;
              }),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.white.withOpacity(0.5);
                }

                return null;
              }),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              iconSize: MaterialStateProperty.all(16),
            ),
            onPressed: () {
              context.go("/");
            },
            icon: const FaIcon(FontAwesomeIcons.house),
            label: const Text("Home"),
          ),
        ],
      ),
    );
  }
}
