import 'package:flutter/material.dart';
import 'package:repair_shoes/additional.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24, screenHeight * 0.07, 24, 18),
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
                  padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                  color: Color.fromRGBO(222, 223, 255, 100),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SearchInput(
                            textController: _searchController,
                            hintText: "Search"),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 75, 81, 255),
                                Color.fromARGB(255, 108, 113, 254),
                              ])),
                          child: Stack(
                            children: [
                              Opacity(
                                opacity: .5,
                                // child: Image.asset('images/doodle.jpg')
                                    // fit: BoxFit.cover),
                              ),
                              // Image.network(
                              //     "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Image.png?alt=media&token=8256c357-cf86-4f76-8c4d-4322d1ebc06c"),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(25.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Do you want to find\na tailor near you?",
                                        style: TextStyle(
                                            fontFamily: 'SF Pro',
                                            fontSize: 22.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Container(
                                        width: 132,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 207,
                                              207, 207), // Background color blue
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: IconButton(
                                            icon: const Expanded(
                                              child: Row(
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.spaceEvenly,
                                                // crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Refund',
                                                    style: TextStyle(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 1.0,
                                                        color: Colors.white,
                                                        // letterSpacing: 2,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .settings_backup_restore_sharp,
                                                    color: Colors
                                                        .white, // Warna ikon putih
                                                    size: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            onPressed: () {
                                              // Function to handle when the notification button is pressed
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recomendation',
                              style: TextStyle(
                                  fontFamily: 'SF Pro',
                                  fontSize: 20.0,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal),
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                  fontFamily: 'SF Pro',
                                  fontSize: 20.0,
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.4, // Ketebalan garis
                          color: Colors.black, // Warna garis
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            GalleryBox(
                              title: 'Title 1',
                              subtitle: 'Subtitle 1',
                              info: 'Open',
                              day: 'Same Day',
                            ),
                            SizedBox(height: 20.0),
                            GalleryBox(
                              title: 'Title 2',
                              subtitle: 'Subtitle 2',
                              info: 'Open',
                              day: 'One Day',
                            ),
                            SizedBox(height: 20.0),
                            GalleryBox(
                              title: 'Title 2',
                              subtitle: 'Subtitle 2',
                              info: 'Open',
                              day: 'One Day',
                            ),
                            SizedBox(height: 20.0),
                            GalleryBox(
                              title: 'Title 3',
                              subtitle: 'Subtitle 2',
                              info: 'Closed',
                              day: 'One Day',
                            ),
                            // SizedBox(height: 16.0),
                          ],
                        )
                      ]),
                ),
              ),
            )
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
  final String day;

  const GalleryBox({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.info,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color statusColor = Colors.transparent; // Default color
    Color statusColorSecondary = Colors.transparent;
    double statusSize = 120;

    double daySize = 120;

    // Determine color based on info
    switch (info) {
      case 'Open':
        statusColor = Colors.green;
        statusColorSecondary = Colors.green.withOpacity(0.1);
        statusSize = 60;
        break;
      case 'Closed':
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

    switch (day) {
      case 'Same Day':
        daySize = 100;
        break;
      case 'One Day':
        daySize = 80;
        break;
      case 'Processed':

        daySize = 100;
        break;
      case 'Delivered':

        daySize = 80;
        break;
      default:
        statusColor = Colors.transparent;
        statusColorSecondary = Colors.transparent;
    }

    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 190,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
          // const BoxShadow(
          //   color: Colors.blue,
          //   spreadRadius: 0.3,
          //   blurRadius: 0,
          //   offset: Offset(0, -4),
          // ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 18.0,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 0.4, // Ketebalan garis
            color: Colors.black, // Warna garis
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jalan Bromo',
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Rp. 25.000 - Rp. 100.000',
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            children: [
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
                      fontSize: 15,
                      color: statusColor,
                      // letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                width: daySize,
                height: 28,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: statusColorSecondary,
                  borderRadius: BorderRadius.circular(60.0),
                ),
                child: Center(
                  child: Text(
                    day,
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 15,
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
        ],
      ),
    );
  }
}
