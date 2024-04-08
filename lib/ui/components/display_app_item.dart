import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DisplayAppItem extends StatelessWidget {
  final Widget appLogo;
  final String framework;
  final String appName;
  final String description;
  final String? appStoreLink;
  final String? playStoreLink;
  final List<String> images;
  const DisplayAppItem({
    super.key,
    required this.appLogo,
    required this.framework,
    required this.appName,
    required this.description,
    this.appStoreLink,
    this.playStoreLink,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
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
                      await launchUrlString(appStoreLink ?? '');
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
                      await launchUrlString(playStoreLink ?? '');
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
}
