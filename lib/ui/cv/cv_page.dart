import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pahnal_web/ui/components/side_section.dart';

class CvPage extends StatefulWidget {
  const CvPage({super.key});

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  final Duration swingWorkingDuration = DateTime(2022, 5).difference(DateTime(2025, 06, 01)).abs();

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
                              image: AssetImage('assets/images/swing.png'),
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
                                text: ' - Tangerang, Indonesia',
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
                        const Text(
                          "May 2022 - June 2025",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 24),
                        // DESCRIPTION
                        const Text(
                          '''
•	Developed and maintained two mobile applications using Flutter SDK:
  -	Swing App – for golf players, offering features like Tee Time booking, Driving Range, Tournament registration, and an integrated Marketplace.
  -	Swing for Partners – for golf course partners/staff to manage bookings, schedules, and monitor tournament activities.
•	Collaborated closely with UI/UX designers, backend engineers, and product teams to deliver a seamless, consistent, and responsive user experience across both apps.
•	Refactored legacy code for improved modularity, readability, and scalability, supporting long-term maintenance and feature expansion.
•	Actively conducted testing, debugging, and performance optimization to ensure smooth performance on various devices and platforms.
•	Maintained alignment with Flutter best practices and continuously improved development workflows to stay ahead of industry standards.''',
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
                  // WORK EXPERIENCE ITEM
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
                              image: AssetImage('assets/images/bahaso.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // COMPANY
                        const Text.rich(
                          TextSpan(
                            text: 'Bahaso',
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
                        const Text(
                          "June 2024 - December 2024",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 24),
                        // DESCRIPTION
                        const Text(
                          '''
•	Collaborated with Backend engineers, Lead Dev Team, and UI/UX Designers as part of a team to develop high-quality mobile applications using Flutter SDK.
•	Contributed to the development of "Bahaso Second Edition", focusing on refactoring the code for efficiency, adding new features, and performing a redesign to create a more modern and user-friendly interface.
•	Improved application performance through optimizations, ensuring smooth operation across various devices and platforms.
•	Enhanced the modularity, readability, and scalability of the code to support long-term maintenance and future feature expansion.
•	Contributed to maintaining code quality through testing, debugging, and bug fixing, ensuring the stability and responsiveness of the application.''',
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

              // WORK EXPERIENCE ITEM
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
                          image: AssetImage('assets/images/swing.png'),
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
                            text: ' - Tangerang, Indonesia',
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
                    const Text(
                      "May 2022 - June 2025",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // DESCRIPTION
                    const Text(
                      '''
•	Developed and maintained two mobile applications using Flutter SDK:
  -	Swing App – for golf players, offering features like Tee Time booking, Driving Range, Tournament registration, and an integrated Marketplace.
  -	Swing for Partners – for golf course partners/staff to manage bookings, schedules, and monitor tournament activities.
•	Collaborated closely with UI/UX designers, backend engineers, and product teams to deliver a seamless, consistent, and responsive user experience across both apps.
•	Refactored legacy code for improved modularity, readability, and scalability, supporting long-term maintenance and feature expansion.
•	Actively conducted testing, debugging, and performance optimization to ensure smooth performance on various devices and platforms.
•	Maintained alignment with Flutter best practices and continuously improved development workflows to stay ahead of industry standards.''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
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
                          image: AssetImage('assets/images/bahaso.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // COMPANY
                    const Text.rich(
                      TextSpan(
                        text: 'Bahaso',
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
                    const Text(
                      "June 2024 - December 2024",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // DESCRIPTION
                    const Text(
                      '''
•	Collaborated with Backend engineers, Lead Dev Team, and UI/UX Designers as part of a team to develop high-quality mobile applications using Flutter SDK.
•	Contributed to the development of "Bahaso Second Edition", focusing on refactoring the code for efficiency, adding new features, and performing a redesign to create a more modern and user-friendly interface.
•	Improved application performance through optimizations, ensuring smooth operation across various devices and platforms.
•	Enhanced the modularity, readability, and scalability of the code to support long-term maintenance and future feature expansion.
•	Contributed to maintaining code quality through testing, debugging, and bug fixing, ensuring the stability and responsiveness of the application.''',
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
