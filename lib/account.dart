import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_shoes/homepage.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool runCupertinoApp = false;

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Profile Page';
    return MaterialApp(
      // title: appTitle,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(appTitle),
        // ),
        body: const Center(
          child: ProfilePage(),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Container(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/doodle.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.colorDodge),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(222, 223, 255, 100),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(10, 60, 10, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/profil.png'),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Haza Nasrullah',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'hazanasrullah@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Tambahkan bagian setting di sini
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(222, 223, 255, 100),
                    // height: double.maxFinite,
                    // color: Color.fromRGBO(222, 223, 255, 100),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Profile',
                          style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 18.0,
                              // letterSpacing: ,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SettingList(
                          leading: Icons.edit,
                          title: "Edit Profile",
                          onTap: () {},
                        ),
                        SettingList(
                          leading: Icons.lock,
                          title: "Change Password",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // height: double.maxFinite,
                    color: Color.fromRGBO(222, 223, 255, 100),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Account',
                          style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 18.0,
                              // letterSpacing: ,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SettingList(
                          leading: Icons.payment,
                          title: "Payment Option",
                          onTap: () {},
                        ),
                        SettingList(
                          leading: Icons.notifications,
                          title: "Notification Setting",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // height: double.maxFinite,
                    color: Color.fromRGBO(222, 223, 255, 100),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'General',
                          style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 18.0,
                              // letterSpacing: ,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SettingList(
                          leading: Icons.payment,
                          title: "Support",
                          onTap: () {},
                        ),
                        SettingList(
                          leading: Icons.notifications,
                          title: "Terms Of Services",
                          onTap: () {},
                        ),
                        SettingList(
                          leading: Icons.notifications,
                          title: "Contact Developer",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingList extends StatelessWidget {
  final IconData leading;
  final String title;
  final VoidCallback onTap;

  const SettingList({
    Key? key,
    required this.leading,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(leading),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: onTap,
      ),
    );
  }
}
