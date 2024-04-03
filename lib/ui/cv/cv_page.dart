import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pahnal_web/ui/components/side_section.dart';

class CvPage extends StatefulWidget {
  const CvPage({super.key});

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
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
    return Scaffold(
      backgroundColor: const Color(0xFF343849),
      body: MediaQuery.of(context).size.width < 800 ? _mobileSize() : _websiteSize(),
    );
  }

  Widget _websiteSize() {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Hero(
              tag: 'pahnal',
              child: SideSection(currentIndex: 1),
            ),
          ),
          const SizedBox(width: 24),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                  // WORK EXPERIENCE LIST
                  Container(
                    width: double.infinity,
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
                          style: const TextStyle(
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
• Collaborating with the backend team to integrate the application with the server-side.''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
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
                  // EDUCATION LIST
                  Container(
                    width: double.infinity,
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
                                'assets/images/umkt.png',
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
• Completed a thesis on the development of a mobile application for the presence QR Code UMKT.''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
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
                  // SKILLS LIST
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const Column(
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
• Dart, Kotlin
• Clean Architecture
• Google Maps API
• Firebase (FCM, Firestore, Firebase Storage, Remote Config, Auth, Crashlytics)
• Dependency Injection''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // SKILLS LIST
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const Column(
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
•	Flutter SDK
•	GetX (Router,Local Storage, Localization, State Management, Etc.)
•	State Management : Blocs, Provider, GetX
•	Local Database : HIVE, Floor, ObjectBox
•	Depedencies Injection : Get_It
•	Networking: DIO, HTTP
•	Location Service, Maps, Camera, Scanning QR Code
•	AppLink & DeepLink (Android/IOS)''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // SKILLS LIST
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const Column(
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
•	Android SDK
•	LiveData, Flow, Coroutines
•	Local Database: Room, SQLite
•	MVC/MVVM Architecture
•	Local Key Storage: SharePref, DataStore
•	Networking: Retrofit, OkHTTP
•	Depedencies Injection : Dagger-Hilt, Koin''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // TITLE
                  const Text(
                    'Languages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // LANGUAGES LIST
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // LANGUAGES ITEM
                        // TITLE
                        Text(
                          'Indonesian',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        // LANGUAGES
                        Text(
                          '''• Native Speaker or Bilingual Proficiency''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'English',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        // LANGUAGES
                        Text(
                          '''• Intermediate Level''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
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

  Widget _mobileSize() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: SideSection(currentIndex: 1),
                ),
              ),
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
              // WORK EXPERIENCE LIST
              Container(
                width: double.infinity,
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
                      style: const TextStyle(
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
• Collaborating with the backend team to integrate the application with the server-side.''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
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
              // EDUCATION LIST
              Container(
                width: double.infinity,
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
                            'assets/images/umkt.png',
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
• Completed a thesis on the development of a mobile application for the presence QR Code UMKT.''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
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
              // SKILLS LIST
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Column(
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
• Dart, Kotlin
• Solid Principles
• Clean Architecture
• Firebase (FCM, Firestore, Firebase Storage,
Remote Config, Auth, Crashlytics)
• Dependencies Injection
• Google Maps API''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // SKILLS LIST
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Column(
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
•	Flutter SDK
•	GetX (Router,Local Storage, Localization, State Management, Etc.)
•	State Management : Blocs, Provider, GetX
•	Local Database : HIVE, Floor, ObjectBox
•	Depedencies Injection : Get_It
•	Networking: DIO, HTTP
•	Location Service, Maps, Camera, Scanning QR Code
•	AppLink & DeepLink (Android/IOS)''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // SKILLS LIST
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Column(
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
•	Android SDK
•	LiveData, Flow, Coroutines
•	Local Database: Room, SQLite
•	MVC/MVVM Architecture
•	Local Key Storage: SharePref, DataStore
•	Networking: Retrofit, OkHTTP
•	Depedencies Injection : Dagger-Hilt, Koin''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // TITLE
              const Text(
                'Languages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              // LANGUAGES LIST
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LANGUAGES ITEM
                    // TITLE
                    Text(
                      'Indonesian',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    // LANG
                    Text(
                      '''• Native Speaker or Bilingual Proficiency''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'English',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    // LANG
                    Text(
                      '''• Intermediate Level''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
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
