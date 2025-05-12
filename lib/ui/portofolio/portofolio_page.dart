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

  List<Widget> _buildPortoList() {
    return [
      DisplayAppItem(
        appLogo: Image.asset(
          'assets/images/swing.png',
          fit: BoxFit.cover,
        ),
        framework: 'Flutter',
        appName: 'Swing - Golf Booking App',
        description: "The Everything Golf App",
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
        appLogo: Image.asset(
          'assets/images/partners.png',
          fit: BoxFit.cover,
        ),
        framework: 'Flutter',
        appName: 'Swing For Partners',
        description: "Manage & Track Everything Golf",
        appStoreLink: 'https://apps.apple.com/id/app/swing-for-partners/id6566187091',
        playStoreLink: 'https://play.google.com/store/apps/details?id=app.getswing.partners&hl=id',
        images: const [
          'assets/images/swing_for_partners_1.png',
          'assets/images/swing_for_partners_2.png',
          'assets/images/swing_for_partners_3.png',
          'assets/images/swing_for_partners_4.png',
        ],
      ),
      const SizedBox(height: 24),
      DisplayAppItem(
        appLogo: Image.asset(
          'assets/images/bahaso.png',
        ),
        framework: 'Flutter',
        appName: 'Bahaso Second Edition',
        description: "Platform pendidikan bahasa online dan media sosial untuk pembelajaran bahasa",
        playStoreLink: "https://play.google.com/store/apps/details?id=com.bahaso.bahasonesiamobile&hl=id",
        images: const [
          'assets/images/bahaso_1.png',
          'assets/images/bahaso_2.png',
          'assets/images/bahaso_3.png',
          'assets/images/bahaso_4.png',
          'assets/images/bahaso_5.png',
          'assets/images/bahaso_6.png',
        ],
      ),
      const SizedBox(height: 24),
    ];
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
                  ..._buildPortoList(),
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
                    ..._buildPortoList(),
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
