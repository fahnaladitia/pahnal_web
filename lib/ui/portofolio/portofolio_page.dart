import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../components/side_section.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343849),
      body: MediaQuery.of(context).size.width < 800 ? _mobileSize(context) : _websiteSize(context),
    );
  }

  Widget _websiteSize(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Hero(
              tag: 'pahnal',
              child: SideSection(currentIndex: 2),
            ),
          ),
          const SizedBox(width: 24),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    'Portofolio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildItemPortofolio(
                    appLogo: Image.network(
                        "https://cdn.discordapp.com/attachments/979229140215558166/1224375879363334144/swing.png?ex=661d43e5&is=660acee5&hm=e8c00ff91313343cb0e44bd729b1222a3e889b0d84219d41a7486006a3870249&"),
                    framework: 'Flutter',
                    appName: 'Swing - Golf Booking App',
                    description:
                        "Book driving on your favorite golf courses from your phone. Payment, confirmation, and history - all in one app.",
                    appStoreLink: 'https://apps.apple.com/us/app/swing-golf-booking-app/id1623054744',
                    playStoreLink: 'https://play.google.com/store/apps/details?id=app.getswing',
                    images: [
                      'assets/images/swing_1.png',
                      'assets/images/swing_2.png',
                      'assets/images/swing_3.png',
                      'assets/images/swing_4.png',
                      'assets/images/swing_5.png',
                      'assets/images/swing_6.png',
                      'assets/images/swing_7.png',
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildItemPortofolio(
                    // appLogo: const DecorationImage(
                    //   image: AssetImage('images/presensi_umkt_logo.png'),
                    // ),
                    appLogo: Image.asset(
                      'assets/images/presensi_umkt_logo.png',
                    ),
                    framework: 'Flutter',
                    appName: 'Presensi UMKT - Attendance App',
                    description:
                        "Presensi UMKT is an application for students to attendance online/offline lectures. This application is integrated with the UMKT system. This application is made to make it easier for students to attend lectures and to make it easier for lecturers to take attendance. This application is made with Scan QR Code technology and Location Based.",
                    images: [
                      'assets/images/presensi_umkt_1.jpeg',
                      'assets/images/presensi_umkt_2.jpeg',
                      'assets/images/presensi_umkt_3.jpeg',
                      'assets/images/presensi_umkt_4.jpeg',
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }

  Widget _buildItemPortofolio({
    required Widget appLogo,
    required String framework,
    required String appName,
    required String description,
    String? appStoreLink,
    String? playStoreLink,
    required List<String> images,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // LOGO SWING
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: appLogo,
                  ),
                ),
                const SizedBox(width: 24),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'Flutter',
                        framework,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // 'Swing - Golf Booking App',
                        appName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            // "Book driving on your favorite golf courses from your phone. Payment, confirmation, and history - all in one app.",
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // BUTTON APP STORE
              if (appStoreLink != null)
                ElevatedButton.icon(
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    ),
                    elevation: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return 8;
                      }
                      return 0;
                    }),
                    shadowColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.white;
                      }
                      return Colors.transparent;
                    }),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(color: Colors.white),
                    )),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.white;
                      }
                      return Colors.black;
                    }),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.grey;
                      }
                      return Colors.white;
                    }),
                  ),
                  onPressed: () async {
                    // Open App Store
                    try {
                      await launchUrlString(appStoreLink);
                    } catch (e) {
                      if (kDebugMode) {
                        print(e);
                      }
                    }
                  },
                  icon: const FaIcon(FontAwesomeIcons.appStore),
                  label: const Text('App Store'),
                ),

              // BUTTON PLAY STORE ANDROID
              const SizedBox(width: 8),
              if (playStoreLink != null)
                ElevatedButton.icon(
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
                    elevation: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return 8;
                      }
                      return 0;
                    }),
                    shadowColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.white;
                      }
                      return Colors.transparent;
                    }),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(color: Colors.white),
                    )),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.white;
                      }
                      return Colors.black;
                    }),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.grey;
                      }
                      return Colors.white;
                    }),
                  ),
                  onPressed: () async {
                    // Open Play Store
                    try {
                      await launchUrlString(playStoreLink);
                    } catch (e) {
                      if (kDebugMode) {
                        print(e);
                      }
                    }
                  },
                  icon: const FaIcon(FontAwesomeIcons.googlePlay),
                  label: const Text('Play Store'),
                ),
            ],
          ),
          const SizedBox(height: 16),
          // GALERY SWING - ROW
          SizedBox(
            height: 350,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // FROM Assets Image - Aspects Ratio 9:16
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: images
                    .map(
                      (image) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobileSize(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: SideSection(currentIndex: 2),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    const Text(
                      'Portofolio',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildItemPortofolio(
                      appLogo: Image.network(
                          "https://cdn.discordapp.com/attachments/979229140215558166/1224375879363334144/swing.png?ex=661d43e5&is=660acee5&hm=e8c00ff91313343cb0e44bd729b1222a3e889b0d84219d41a7486006a3870249&"),
                      framework: 'Flutter',
                      appName: 'Swing - Golf Booking App',
                      description:
                          "Book driving on your favorite golf courses from your phone. Payment, confirmation, and history - all in one app.",
                      appStoreLink: 'https://apps.apple.com/us/app/swing-golf-booking-app/id1623054744',
                      playStoreLink: 'https://play.google.com/store/apps/details?id=app.getswing',
                      images: [
                        'assets/images/swing_1.png',
                        'assets/images/swing_2.png',
                        'assets/images/swing_3.png',
                        'assets/images/swing_4.png',
                        'assets/images/swing_5.png',
                        'assets/images/swing_6.png',
                        'assets/images/swing_7.png',
                      ],
                    ),
                    const SizedBox(height: 24),
                    _buildItemPortofolio(
                      // appLogo: const DecorationImage(
                      //   image: AssetImage('images/presensi_umkt_logo.png'),
                      // ),
                      appLogo: Image.asset(
                        'assets/images/presensi_umkt_logo.png',
                      ),
                      framework: 'Flutter',
                      appName: 'Presensi UMKT - Attendance App',
                      description:
                          "Presensi UMKT is an application for students to attendance online/offline lectures. This application is integrated with the UMKT system. This application is made to make it easier for students to attend lectures and to make it easier for lecturers to take attendance. This application is made with Scan QR Code technology and Location Based.",
                      images: [
                        'assets/images/presensi_umkt_1.jpeg',
                        'assets/images/presensi_umkt_2.jpeg',
                        'assets/images/presensi_umkt_3.jpeg',
                        'assets/images/presensi_umkt_4.jpeg',
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}