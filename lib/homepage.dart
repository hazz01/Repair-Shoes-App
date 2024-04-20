import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(222, 223, 255, 100),
        // padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        // color: Colors.black26,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24, screenHeight * 0.05, 24, 18),
              // padding: EdgeInsets.only(top: screenHeight * 0.02),
              // color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ]),
              width: MediaQuery.of(context)
                  .size
                  .width, // Menggunakan lebar layar penuh sebagai batasan lebar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                  backgroundImage: AssetImage('images/profil.png'),
                  radius: 30.0,
                ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Pagi',
                          style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 16.0,
                              // letterSpacing: ,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          'Haza Nasrullah',
                          style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 16.0,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue, // Warna latar belakang biru
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white, // Warna ikon putih
                      ),
                      onPressed: () {
                        // Fungsi untuk menangani ketika tombol notifikasi ditekan
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(24),
                  color: Color.fromRGBO(222, 223, 255, 100),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'My Wallet',
                        style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Rp. 25.000,-',
                            style: TextStyle(
                                fontFamily: 'SF Pro',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal),
                          ),
                          Container(
                            width: screenWidth * 0.25,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.green[600], // Background color blue
                              borderRadius: BorderRadius.circular(
                                  20.0), // Rounded corners
                            ),
                            child: IconButton(
                              icon: const Text(
                                '-RP. 10K',
                                style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal),
                              ),
                              onPressed: () {
                                // Function to handle when the notification button is pressed
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * 0.4,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  255, 43, 45, 51), // Background color blue
                              borderRadius: BorderRadius.circular(
                                  60.0), // Rounded corners
                            ),
                            child: IconButton(
                              icon: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.settings_backup_restore_sharp,
                                    color: Colors.white, // Warna ikon putih
                                  ),
                                  Text(
                                    'Refund',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                // Function to handle when the notification button is pressed
                              },
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.4,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  255, 43, 45, 51), // Background color blue
                              borderRadius: BorderRadius.circular(
                                  60.0), // Rounded corners
                            ),
                            child: IconButton(
                              icon: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.qr_code_rounded,
                                    color: Colors.white, // Warna ikon putih
                                  ),
                                  Text(
                                    'QRIS',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                // Function to handle when the notification button is pressed
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'Activity',
                        style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontSize: 24.0,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: GalleryBox(
                                  title: 'Title 1',
                                  subtitle: 'Subtitle 1',
                                  info: 'Done',
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: GalleryBox(
                                  title: 'Title 2',
                                  subtitle: 'Subtitle 2',
                                  info: 'Rejected',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              Expanded(
                                child: GalleryBox(
                                  title: 'Title 3',
                                  subtitle: 'Subtitle 3',
                                  info: 'Processed',
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: GalleryBox(
                                  title: 'Title 4',
                                  subtitle: 'Subtitle 4',
                                  info: 'Delivered',
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GalleryBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String info;

  const GalleryBox({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color statusColor = Colors.transparent; // Default color
    Color statusColorSecondary = Colors.transparent;
    double statusSize = 120;

    // Determine color based on info
    switch (info) {
      case 'Done':
        statusColor = Colors.green;
        statusColorSecondary = Colors.green.withOpacity(0.1);
        statusSize = 60;
        break;
      case 'Rejected':
        statusColor = Colors.red;
        statusColorSecondary = Colors.red.withOpacity(0.1);
        statusSize = 80;
        break;
      case 'Processed':
        statusColor = Colors.blue;
        statusColorSecondary = Colors.blue.withOpacity(0.1);
        statusSize = 100;
        break;
      case 'Delivered':
        statusColor = Colors.grey;
        statusColorSecondary = Colors.grey.withOpacity(0.1);
        statusSize = 80;
        break;
      default:
        statusColor = Colors.transparent;
        statusColorSecondary = Colors.transparent;
    }

    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
            
          ),
          const BoxShadow(
            color: Colors.blue,
            spreadRadius: 0.3,
            blurRadius: 0,
            offset: Offset(0, -4),
          ),
        
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                subtitle,
                style: const TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 14.0,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            width: statusSize,
            height: 28,
            decoration: BoxDecoration(
              color: statusColorSecondary,
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Center(
              child: Text(
                info,
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 13,
                  color: statusColor,
                  // letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// class GalleryBox extends StatelessWidget {
//   final String title;
//   final String subtitle;

//   const GalleryBox({
//     Key? key,
//     required this.title,
//     required this.subtitle,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       height: 150,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 3,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//           const BoxShadow(
//             color: Colors.blue,
//             spreadRadius: 0.3,
//             blurRadius: 0,
//             offset: Offset(0, -4),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                     fontFamily: 'SF Pro',
//                     fontSize: 18.0,
//                     letterSpacing: 1,
//                     fontWeight: FontWeight.w700,
//                     fontStyle: FontStyle.normal),
//               ),
//               const SizedBox(height: 4.0),

//               // Text(
//               //   subtitle,
//               //   style: const TextStyle(
//               //     fontSize: 16.0,
//               //     color: Colors.grey,
//               //   ),
//               // ),
//               Text(
//                 subtitle,
//                 style: const TextStyle(
//                     fontFamily: 'SF Pro',
//                     fontSize: 16.0,
//                     letterSpacing: 1,
//                     fontWeight: FontWeight.w400,
//                     fontStyle: FontStyle.normal),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 icon: Text(
//                       'Done',
//                       style: TextStyle(
//                           fontFamily: 'SF Pro',
//                           fontSize: 12.0,
//                           color: Colors.white,
//                           letterSpacing: 2,
//                           fontWeight: FontWeight.w600,
//                           fontStyle: FontStyle.normal),
//                     ),
//                 onPressed: () {
//                   // Function to handle when the notification button is pressed
//                 },
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
