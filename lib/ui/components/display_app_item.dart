import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinkData {
  final String link;
  final Widget icon;
  final String label;

  LinkData({
    required this.link,
    required this.icon,
    required this.label,
  });
}

class DisplayAppItem extends StatefulWidget {
  final Widget appLogo;
  final String framework;
  final String appName;
  final String description;
  final String? appStoreLink;
  final String? playStoreLink;
  final String? githubLink;
  final List<String> images;
  const DisplayAppItem({
    super.key,
    required this.appLogo,
    required this.framework,
    required this.appName,
    required this.description,
    this.appStoreLink,
    this.playStoreLink,
    this.githubLink,
    required this.images,
  });

  @override
  State<DisplayAppItem> createState() => _DisplayAppItemState();
}

class _DisplayAppItemState extends State<DisplayAppItem> {
  List<LinkData> links = [];

  @override
  void initState() {
    super.initState();
    if (widget.appStoreLink != null) {
      links.add(LinkData(
        link: widget.appStoreLink!,
        icon: const FaIcon(FontAwesomeIcons.appStore),
        label: 'App Store',
      ));
    }
    if (widget.playStoreLink != null) {
      links.add(LinkData(
        link: widget.playStoreLink!,
        icon: const FaIcon(FontAwesomeIcons.googlePlay),
        label: 'Play Store',
      ));
    }
    if (widget.githubLink != null) {
      links.add(LinkData(
        link: widget.githubLink!,
        icon: const FaIcon(FontAwesomeIcons.github),
        label: 'Github',
      ));
    }
  }

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
                    child: widget.appLogo,
                  ),
                ),
                const SizedBox(width: 24),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'Swing - Golf Booking App',
                        widget.appName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // 'Flutter',
                        widget.framework,

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
            widget.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),

          Row(
            children: links.map((e) {
              final isLast = links.indexOf(e) == links.length - 1;
              return Padding(
                padding: EdgeInsets.only(right: isLast ? 0 : 8),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
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
                      await launchUrlString(e.link);
                    } catch (e) {
                      if (kDebugMode) {
                        print(e);
                      }
                    }
                  },
                  icon: e.icon,
                  label: Text(e.label),
                ),
              );
            }).toList(),
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
                children: widget.images
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
