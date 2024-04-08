import 'package:flutter/material.dart';
import 'package:pahnal_web/ui/components/display_app_item.dart';

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
                  DisplayAppItem(
                    appLogo: Image.network(
                        "https://cdn.discordapp.com/attachments/979229140215558166/1224375879363334144/swing.png?ex=661d43e5&is=660acee5&hm=e8c00ff91313343cb0e44bd729b1222a3e889b0d84219d41a7486006a3870249&"),
                    framework: 'Flutter',
                    appName: 'Swing - Golf Booking App',
                    description:
                        "Book driving on your favorite golf courses from your phone. Payment, confirmation, and history - all in one app.",
                    appStoreLink: 'https://apps.apple.com/us/app/swing-golf-booking-app/id1623054744',
                    playStoreLink: 'https://play.google.com/store/apps/details?id=app.getswing',
                    images: const [
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
                  DisplayAppItem(
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
                    images: const [
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
                    DisplayAppItem(
                      appLogo: Image.network(
                          "https://cdn.discordapp.com/attachments/979229140215558166/1224375879363334144/swing.png?ex=661d43e5&is=660acee5&hm=e8c00ff91313343cb0e44bd729b1222a3e889b0d84219d41a7486006a3870249&"),
                      framework: 'Flutter',
                      appName: 'Swing - Golf Booking App',
                      description:
                          "Book driving on your favorite golf courses from your phone. Payment, confirmation, and history - all in one app.",
                      appStoreLink: 'https://apps.apple.com/us/app/swing-golf-booking-app/id1623054744',
                      playStoreLink: 'https://play.google.com/store/apps/details?id=app.getswing',
                      images: const [
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
                    DisplayAppItem(
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
                      images: const [
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
