import 'package:flutter/material.dart';
import 'package:pahnal_web/ui/components/display_app_item.dart';
import 'package:pahnal_web/ui/components/side_section.dart';

class ScratchPage extends StatelessWidget {
  const ScratchPage({
    super.key,
  });

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
              child: SideSection(currentIndex: 3),
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
                    'Scratch',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  DisplayAppItem(
                    appLogo: Image.asset("assets/images/weather_forecasts_icon.png"),
                    framework: 'Flutter',
                    appName: 'Weather Forecasts',
                    description:
                        "Weather Forecasts is an application that provides weather information. This application is made with the Flutter framework and uses the OpenWeatherMap API.",
                    images: const [
                      'assets/images/weather_forecasts_gallery_1.PNG',
                      'assets/images/weather_forecasts_gallery_2.PNG',
                      'assets/images/weather_forecasts_gallery_3.PNG',
                      'assets/images/weather_forecasts_gallery_4.PNG',
                    ],
                  ),
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
                  child: SideSection(currentIndex: 3),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Scratch',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    DisplayAppItem(
                      appLogo: Image.asset("assets/images/weather_forecasts_icon.png"),
                      framework: 'Flutter',
                      appName: 'Weather Forecasts',
                      description:
                          "Weather Forecasts is an application that provides weather information. This application is made with the Flutter framework and uses the OpenWeatherMap API.",
                      images: const [
                        'assets/images/weather_forecasts_gallery_1.PNG',
                        'assets/images/weather_forecasts_gallery_2.PNG',
                        'assets/images/weather_forecasts_gallery_3.PNG',
                        'assets/images/weather_forecasts_gallery_4.PNG',
                      ],
                    ),
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
