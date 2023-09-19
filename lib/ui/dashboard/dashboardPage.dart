// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointofsales/ui/login/mainPage.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    void logout() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const FirstPage())));
      SnackBar snackBar = const SnackBar(content: Text('Log Out Berhasil'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 53, 106, 1.000),
      body: Stack(
        children: [
          SafeArea(child: Padding(padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(height: height * 0.05,),
              Image.asset('img/logonew.png',
              height: 100,
              width: 100,
                  ),
              const Text(
                    'POINT OF SALES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'SELAMAT DATANG ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Kasir',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  // Text(
                  //   'Jabatan ${user.jabatan}',
                  //   style: const TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(
                    height: height * 0.03,
                  ),SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    '{user.nama}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  // Text(
                  //   'Jabatan ${user.jabatan}',
                  //   style: const TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(
                    height: height * 0.03,
                  ),Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 3,
                      children: [
                        Card(
                          color: const Color.fromARGB(255, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              // database();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(FontAwesomeIcons.database,
                                    size: 30.0, color: Colors.black),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text('DATABASE',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: const Color.fromARGB(255, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              // tagihan();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(FontAwesomeIcons.wallet,
                                    size: 30.0, color: Colors.black),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text('KASIR',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: const Color.fromARGB(255, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              // history();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(FontAwesomeIcons.history,
                                    size: 30.0, color: Colors.black),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text('RIWAYAT',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: const Color.fromARGB(255, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              // callcenter();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Icon(
                                  FontAwesomeIcons.phone,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text('LAPORAN',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: const Color.fromARGB(255, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              // profile();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Icon(
                                  FontAwesomeIcons.user,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text('PROFILE',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: const Color.fromARGB(255, 255, 201, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: (() {
                              logout();
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(FontAwesomeIcons.signOut,
                                    size: 30.0, color: Colors.black),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text('LOG OUT',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            ],
          ),))
        ],
      )
    );
  }
}