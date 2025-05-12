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
                    'App Creation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Subtitle
                  const SizedBox(height: 8),
                  const Text(
                    'I have created several applications using various frameworks. Here are some of the applications I have created:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  DisplayAppItem(
                    appLogo: Image.asset("assets/images/weather_forecasts_icon.png"),
                    framework: 'Flutter',
                    appName: 'Weather Forecasts - OpenWeatherMap API & Geoapify API',
                    description:
                        "Weather Forecasts is an application that provides weather information. This application is made with the Flutter framework and uses the OpenWeatherMap API.",
                    githubLink: "https://github.com/fahnaladitia/weatherforecasts",
                    images: const [
                      'assets/images/weather_forecasts_gallery_1.PNG',
                      'assets/images/weather_forecasts_gallery_2.PNG',
                      'assets/images/weather_forecasts_gallery_3.PNG',
                      'assets/images/weather_forecasts_gallery_4.PNG',
                    ],
                  ),
                  const SizedBox(height: 24),
                  DisplayAppItem(
                    appLogo: Image.asset("assets/images/movie_icon.png"),
                    framework: 'Android Native (Kotlin)',
                    appName: 'Movie App - The Movie Database API (TMDB)',
                    description:
                        "Movie App is an application that provides information about movies. This application is made with Android Native (Kotlin) and uses The Movie Database API (TMDB). You can see type of movie (popular movies,top rated movies, upcoming movies, now playing movies), detail movie, and search movie.",
                    githubLink: "https://github.com/fahnaladitia/MovieApp",
                    images: const [
                      'assets/images/movie_screenshot_1.jpeg',
                      'assets/images/movie_screenshot_2.jpeg',
                      'assets/images/movie_screenshot_3.jpeg',
                      'assets/images/movie_screenshot_4.jpeg',
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
                    const SizedBox(height: 24),
                    DisplayAppItem(
                      appLogo: Image.asset("assets/images/movie_icon.png"),
                      framework: 'Android Native (Kotlin)',
                      appName: 'Movie App - The Movie Database API (TMDB)',
                      description:
                          "Movie App is an application that provides information about movies. This application is made with Android Native (Kotlin) and uses The Movie Database API (TMDB). You can see type of movie (popular movies,top rated movies, upcoming movies, now playing movies), detail movie, and search movie.",
                      githubLink: "https://github.com/fahnaladitia/MovieApp",
                      images: const [
                        'assets/images/movie_screenshot_1.jpeg',
                        'assets/images/movie_screenshot_2.jpeg',
                        'assets/images/movie_screenshot_3.jpeg',
                        'assets/images/movie_screenshot_4.jpeg',
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
