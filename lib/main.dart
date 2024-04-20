import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:repair_shoes/account.dart';
import 'package:repair_shoes/explore.dart';
import 'package:repair_shoes/homepage.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:repair_shoes/testingcuy.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color.fromARGB(255, 232, 232, 232),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate some asynchronous operation (e.g., fetching data)
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue, // Set your splash screen background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo or other splash screen content here
            Image.asset('images/logo.png', width: 150, height: 150),
            const SizedBox(height: 20),
            Center(
              child: LoadingAnimationWidget.fallingDot(
                // leftDotColor: const Color(0xFF1A1A3F),
                // rightDotColor: const Color(0xFFEA3799),
                color: Colors.blue,
                size: 200,
              ),
            ),
            // Loading animation using flutter_spinkit
            // SpinKitWave(
            //   color: Colors.white,
            //   size: 50.0,
            // ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(222, 223, 255, 1),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            Container(alignment: Alignment.center, child: const HomePage()),
            Container(alignment: Alignment.center, child: const Explore()),
            Container(alignment: Alignment.center, child: Icon(Icons.notifications, size: 56, color: Colors.green,)),
            Container(alignment: Alignment.center, child: Account()),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(32),
          ),
          child: WaterDropNavBar(
            backgroundColor: navigationBarColor,
            onItemSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
              pageController.animateToPage(selectedIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
            },
            selectedIndex: selectedIndex,
            barItems: <BarItem>[
              
              BarItem(
                filledIcon: Icons.home_rounded,
                outlinedIcon: Icons.home_outlined,
              ),
              BarItem(
                  filledIcon: Icons.explore_rounded,
                  outlinedIcon: Icons.explore_outlined),
              BarItem(
                filledIcon: Icons.notifications_rounded,
                outlinedIcon: Icons.notifications_outlined,
              ),
              BarItem(
                filledIcon: Icons.account_circle_rounded,
                outlinedIcon: Icons.account_circle_outlined,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

// OnBoard

class OnboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(
      onPressedOnLastPage: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      ),
      pages: [
        // To create What's New page like Calendar or Translator
        // examples in the readme, use `WhatsNewPage` widget:

        // Actual code from the Calendar example:
        WhatsNewPage(
          title: const Text("Welcome To RepairShoes"),
          features: [
            // Feature's type must be `WhatsNewFeature`
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.checkmark_seal,
                color: Colors.blue,
              ),
              title: const Text('Temukan Penjahit Sepatu Terdekat'),
              description: const Text(
                'Temukan tukang penjahit sepatu berkualitas di sekitar Anda dengan mudah.',
              ),
            ),
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.car_detailed,
                color: Colors.blue,
              ),
              title: const Text('Pesan, Ambil, dan Kirim'),
              description: const Text(
                "Pesan layanan penjahitan sepatu, atur waktu pengambilan, dan gunakan layanan pengiriman kami untuk kenyamanan Anda.",
              ),
            ),
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.shopping_cart,
                color: Colors.blue,
              ),
              title: const Text('Jual dan Temukan Pembeli'),
              description: const Text(
                "Tukang penjahit juga dapat menggunakan aplikasi ini untuk mempromosikan layanan mereka dan menemukan pelanggan baru dengan lebih efisien.",
              ),
            ),
          ],
        ),

        // To create custom onboarding page, use
        // `CupertinoOnboardingPage` widget:

        // Actual code from the GIF example:
        const CupertinoOnboardingPage(
          title: Text('Pencarian Penjahit Terdekat'),
          body: Icon(
            CupertinoIcons.search,
            size: 200,
          ),
        ),
        const CupertinoOnboardingPage(
          title: Text('Pemesanan Mudah dan Cepat'),
          body: Icon(
            CupertinoIcons.cart,
            size: 200,
          ),
        ),
      ],
    );
  }
}
