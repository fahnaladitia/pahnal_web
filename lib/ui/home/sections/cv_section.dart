import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CvSection extends StatefulWidget {
  const CvSection({super.key});

  @override
  State<CvSection> createState() => _CvSectionState();
}

class _CvSectionState extends State<CvSection> {
  final Duration swingWorkingDuration = DateTime(2022, 5).difference(DateTime.now().toLocal()).abs();

  String get swingWorkingDurationString {
    final years = swingWorkingDuration.inDays ~/ 365;
    final months = (swingWorkingDuration.inDays % 365) ~/ 30;

    final stringBuilder = StringBuffer();

    stringBuilder.write('(');

    if (years > 1) {
      stringBuilder.write('$years years ');
    }
    if (years == 1) {
      stringBuilder.write('$years year ');
    }

    if (months > 1) {
      stringBuilder.write('$months month');
    }

    if (months == 1) {
      stringBuilder.write('$months month');
    }

    stringBuilder.write(')');

    return stringBuilder.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF343849),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;

          return Container(
            width: maxWidth,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 43, 46, 61),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  // WORK EXPERIENCE
                  // TITLE
                  const Text(
                    'Work Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 24),
                  // WORK EXPERIENCE LIST
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // WORK EXPERIENCE ITEM
                      // TITLE
                      Text(
                        'Mobile Developer (Flutter)',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // LOGO
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.discordapp.com/attachments/979229140215558166/1224375879363334144/swing.png?ex=661d43e5&is=660acee5&hm=e8c00ff91313343cb0e44bd729b1222a3e889b0d84219d41a7486006a3870249&"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // COMPANY
                      const Text.rich(
                        TextSpan(
                          text: 'Swing',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' - Jakarta, Indonesia',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // DATE
                      Text.rich(
                        TextSpan(
                            text: 'May 2022 - Present ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: swingWorkingDurationString,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ]),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
// DESCRIPTION
                      const Text(
                        '''
• Designing, developing, and releasing the Swing application for Android and iOS platforms using Flutter SDK.
• Implementing key features such as Tee Time booking and GPS integration for the driving range location for golf players.
• Collaborating with the UI/UX team in developing an intuitive and engaging user interface.
• Integrating a payment system to facilitate booking payments.
• Optimizing the application's performance and responsiveness to provide a seamless user experience across various devices.
• Conducting regular debugging, testing, and bug fixes to ensure application stability.
• Staying up-to-date with the latest practices in Flutter development to meet evolving industry demands.
• Contributing as a team member in development projects.
• Participating in code reviews and providing constructive feedback to improve code quality.
• Collaborating with the backend team to integrate the application with the server-side.
''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),

                  // TITLE
                  const SizedBox(height: 24),
                  const Text(
                    'Education',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),

                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 24),
                  // EDUCATION LIST
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // EDUCATION ITEM
                      // TITLE
                      Text(
                        'Bachelor of Informatics Engineering',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // LOGO
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              '/images/umkt.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // UNIVERSITY
                      const Text.rich(
                        TextSpan(
                          text: 'Universitas Muhammadiyah Kalimantan Timur',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' - Samarinda, Indonesia',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // DATE
                      const Text(
                        '2019 - 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
                      // DESCRIPTION
                      const Text(
                        '''
• Graduated with a GPA of 3.78.
• Completed a thesis on the development of a mobile application for the presence QR Code UMKT.
• Completed a 2-month (On The Job Training) at Swing as a Mobile Developer.
''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // TITLE
                  const Text(
                    'Skills',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 24),
                  // SKILLS LIST
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SKILLS ITEM
                      // TITLE
                      Text(
                        'Mobile Development Skills',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      // SKILLS
                      Text(
                        '''
• Flutter
• Android Native
• Solid Principles
• MVVM/MVC Architecture
• Clean Architecture
• Google Maps (Google Maps API)
• Firebase (FCM, Firestore, Firebase Storage, Remote Config, Auth, Crashlytics)
• Dependency Injection
''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // SKILLS LIST
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SKILLS ITEM
                      // TITLE
                      Text(
                        'Flutter Development Skills',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      // SKILLS
                      Text(
                        '''
• Flutter SDK
• Dart Programming Language
• State Management (Provider, Blocs,GetX)
• Flutter Testing (Unit Testing, Widget Testing, Integration Testing)
• SQLite Database (Floor, ObjectBox)
• Google Maps (Google Maps API, Flutter Google Maps)
• Realm DB (Hive, ObjectBox, GetX Storage)
• Networking (Dio, HTTP)
• Image Caching (CachedNetworkImage)
• Dependency Injection (GetIt, GetX)
''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // SKILLS LIST
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SKILLS ITEM
                      // TITLE
                      Text(
                        'Android Native Development Skills',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      // SKILLS
                      Text(
                        '''
• Kotlin Programming Language
• Android SDK
• Android Studio
• Android Jetpack (Navigation, LiveData, ViewModel, Room, WorkManager)
• Coroutines, Flow
• Android Testing (Unit Testing, Instrumentation Testing)
• SQLite Database (Room)
• Networking (Retrofit, OkHttp)
• Image Caching (Glide)
• Dependency Injection (Dagger Hilt, Koin)
''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
