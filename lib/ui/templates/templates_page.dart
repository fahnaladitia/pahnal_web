import 'package:flutter/material.dart';
import 'package:pahnal_web/ui/components/display_app_item.dart';
import 'package:pahnal_web/ui/components/side_section.dart';

class TemplatesPage extends StatefulWidget {
  const TemplatesPage({
    super.key,
  });

  @override
  State<TemplatesPage> createState() => _TemplatesPageState();
}

class _TemplatesPageState extends State<TemplatesPage> {
  final List<DisplayAppItem> _apps = [
    const DisplayAppItem(
      appLogo: Icon(Icons.flutter_dash, size: 48, color: Colors.blue),
      framework: 'Flutter',
      appName: 'Flutter CleanBLoX Template (Modular)',
      description:
          "Flutter CleanBLoX Template (Modular) is a template project that demonstrates the use of the Clean Architecture pattern with the BLoC state management solution in Flutter. This template is designed to help developers create modular and maintainable Flutter applications.",
      githubLink: "https://github.com/fahnaladitia/flutter_clean_blox_template_modular",
      images: [],
    ),
    const DisplayAppItem(
      appLogo: Icon(Icons.flutter_dash, size: 48, color: Colors.blue),
      framework: 'Flutter',
      appName: 'Flutter CleanBLoX Template (Monolithic)',
      description:
          "Flutter CleanBLoX Template (Monolithic) is a template project that demonstrates the use of the Clean Architecture pattern with the BLoC state management solution in Flutter. This template is designed to help developers create modular and maintainable Flutter applications.",
      githubLink: "https://github.com/fahnaladitia/flutter_clean_blox_template_monolithic",
      images: [],
    ),
  ];

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
              child: SideSection(currentIndex: 4),
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
                    'Templates',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Subtitle
                  const SizedBox(height: 8),
                  const Text(
                    'Here are some of my templates that I have created. You can use these templates as a reference for your own projects.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _apps.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: _apps[index],
                      );
                    },
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
                  child: SideSection(currentIndex: 4),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Templates',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _apps.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: _apps[index],
                        );
                      },
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
