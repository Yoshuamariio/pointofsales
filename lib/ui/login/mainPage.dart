import 'package:flutter/material.dart';
import 'package:pointofsales/ui/login/admin_login.dart';
import 'package:pointofsales/ui/login/warung_login.dart';
// import 'package:simple_icons/simple_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Fungsi push to adminpage;
  void admin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => const AdminPage())));
  }

  // Fungsi push to customerpage
  void customer() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const CustomerPage())));
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 53, 106, 1.000),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  //Logo Desa Wisata
                  Image.asset(
                    'img/logonew.png',
                    height: 200,
                    width: 150,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                    'POINT OF SALES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   height: height * 0.07,
                  // ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Center(
                    child: Text(
                      'DESA WISATA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Center(
                    child: Text(
                      '"SUMBERBIRU"',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    //Grid admin dan customer
                    child: GridView.count(
                      padding: const EdgeInsets.all(15.0),
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 30,
                      primary: false,
                      crossAxisCount: 2,
                      children: [
                        Card(
                          color: const Color.fromARGB(1000, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              admin();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(FontAwesomeIcons.userShield,
                                    size: 30.0, color: Colors.black),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text('ADMIN',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Card(
                            color: const Color.fromARGB(1000, 255, 201, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 4,
                            child: InkWell(
                              splashColor: Colors.black,
                              onTap: (() {
                                customer();
                              }),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(FontAwesomeIcons.users,
                                      size: 30.0, color: Colors.black),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  const Text('WARUNG',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(height: height * 0.05),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
