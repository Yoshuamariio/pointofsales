// import 'package:flutter/material.dart';
// // import 'package:meteran/model/pelanggan_model.dart';
// // import 'package:meteran/model/user_model.dart';

// // import 'package:meteran/ui/admin_page/admin_database.dart';
// // import 'package:meteran/ui/admin_page/admin_tagihan.dart';
// // import 'package:meteran/ui/dashboard_page/call_center.dart';

// // import 'package:meteran/ui/dashboard_page/database.dart';

// // import 'package:meteran/ui/dashboard_page/profile.dart';

// // import 'package:meteran/ui/riwayat_page/riwayat_lobby.dart';
// // import 'package:meteran/ui/tagihan_page/new_tagihan.dart';

// import 'package:pointofsales/ui/login/admin_login.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // import '../call_center/new_call_center.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Dashboard(),
//     );
//   }
// }

// // ignore: must_be_immutable
// class Dashboard extends StatefulWidget {
//   String? idUser;
//   String? idPelanggan;
//   Dashboard({Key? key, this.idUser, this.idPelanggan}) : super(key: key);

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   var jsonObj;
//   // User user = User();
//   // Pelanggan idPelanggan = Pelanggan();

//   // getData() async {
//   //   jsonObj = await User.getDataById(widget.idUser!);
//   //   if (jsonObj['status'] == "true") {
//   //     user = User.createUser(jsonObj["result"]);
//   //   } else {
//   //     return false;
//   //   }
//   //   setState(() {});
//   // }

//   @override
//   // void initState() {
//   //   getData();
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     void back() {
//       Navigator.pushReplacement(context,
//           MaterialPageRoute(builder: ((context) => const AdminPage())));
//       SnackBar snackBar = const SnackBar(content: Text('Log Out Berhasil'));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     }

//     // void database() {
//     //   if (user.jabatan == "admin") {
//     //     Navigator.push(
//     //         context,
//     //         MaterialPageRoute(
//     //             builder: ((context) => AdminDatabase(
//     //                   jabatan: user.jabatan,
//     //                 ))));
//     //   } else {
//     //     Navigator.push(
//     //         context,
//     //         MaterialPageRoute(
//     //             builder: ((context) => Database(
//     //                   jabatan: user.jabatan,
//     //                 ))));
//     //   }
//     // }

//     // void tagihan() {
//     //   if (user.jabatan == "admin") {
//     //     Navigator.push(
//     //         context,
//     //         MaterialPageRoute(
//     //             builder: ((context) => AdminTagihan(
//     //                   jabatan: user.jabatan,
//     //                 ))));
//     //   } else {
//     //     Navigator.push(
//     //         context,
//     //         MaterialPageRoute(
//     //             builder: ((context) => NewTagihan(
//     //                   jabatan: user.jabatan,
//     //                 ))));
//     //   }
//     // }

//     // void profile() {
//     //   Navigator.push(
//     //       context,
//     //       MaterialPageRoute(
//     //           builder: ((context) => EditProfile(
//     //                 idUser: widget.idUser,
//     //               ))));
//     // }

//     // void callcenter() {
//     //   Navigator.push(
//     //       context, MaterialPageRoute(builder: ((context) => (NewCallCenter()))));
//     // }

//     // void history() {
//     //   Navigator.push(
//     //       context,
//     //       MaterialPageRoute(
//     //           builder: ((context) => RiwayatLobby(
//     //                 title: '',
//     //               ))));
//     // }

//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(12, 53, 106, 1.000),
//       body: Stack(
//         children: [
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(14.0),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: height * 0.05,
//                   ),
//                   Image.asset(
//                     'images/logoHippam.png',
//                     height: 200,
//                     width: 150,
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   const Text(
//                     'TIRTO ARGOWAYANG',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Text(
//                     'SELAMAT DATANG ',
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: height * 0.01,
//                   ),
//                   Text(
//                     '{user.nama}',
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: height * 0.01,
//                   ),
//                   // Text(
//                   //   'Jabatan ${user.jabatan}',
//                   //   style: const TextStyle(
//                   //       color: Colors.white,
//                   //       fontSize: 16,
//                   //       fontWeight: FontWeight.bold),
//                   // ),
//                   SizedBox(
//                     height: height * 0.03,
//                   ),
//                   Expanded(
//                     child: GridView.count(
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                       primary: false,
//                       crossAxisCount: 3,
//                       children: [
//                         Card(
//                           color: const Color.fromARGB(255, 255, 201, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           elevation: 4,
//                           child: InkWell(
//                             splashColor: Colors.black,
//                             onTap: (() {
//                               // database();
//                             }),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Icon(FontAwesomeIcons.database,
//                                     size: 30.0, color: Colors.black),
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Text('DATABASE',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Card(
//                           color: const Color.fromARGB(255, 255, 201, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           elevation: 4,
//                           child: InkWell(
//                             splashColor: Colors.black,
//                             onTap: (() {
//                               // tagihan();
//                             }),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Icon(FontAwesomeIcons.wallet,
//                                     size: 30.0, color: Colors.black),
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Text('TAGIHAN',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Card(
//                           color: const Color.fromARGB(255, 255, 201, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           elevation: 4,
//                           child: InkWell(
//                             splashColor: Colors.black,
//                             onTap: (() {
//                               // history();
//                             }),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Icon(FontAwesomeIcons.history,
//                                     size: 30.0, color: Colors.black),
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Text('RIWAYAT',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Card(
//                           color: const Color.fromARGB(255, 255, 201, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           elevation: 4,
//                           child: InkWell(
//                             splashColor: Colors.black,
//                             onTap: (() {
//                               // callcenter();
//                             }),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: height * 0.02,
//                                 ),
//                                 const Icon(
//                                   FontAwesomeIcons.phone,
//                                   size: 25.0,
//                                   color: Colors.black,
//                                 ),
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Text('CALL',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                                 const Text('CENTER',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Card(
//                           color: const Color.fromARGB(255, 255, 201, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           elevation: 4,
//                           child: InkWell(
//                             splashColor: Colors.black,
//                             onTap: (() {
//                               // profile();
//                             }),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Icon(
//                                   FontAwesomeIcons.user,
//                                   size: 30.0,
//                                   color: Colors.black,
//                                 ),
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Text('PROFILE',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Card(
//                           color: const Color.fromARGB(255, 255, 201, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)),
//                           elevation: 4,
//                           child: InkWell(
//                             splashColor: Colors.black,
//                             onTap: (() {
//                               back();
//                             }),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Icon(FontAwesomeIcons.signOut,
//                                     size: 30.0, color: Colors.black),
//                                 SizedBox(
//                                   height: height * 0.01,
//                                 ),
//                                 const Text('LOG OUT',
//                                     style: TextStyle(
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Column(
//                   //   children: [
//                   //     TextButton(
//                   //       child: const Text(
//                   //         "Call Center",
//                   //         style: TextStyle(color: Colors.white, fontSize: 20),
//                   //       ),
//                   //       onPressed: () {
//                   //         Navigator.push(
//                   //             context,
//                   //             MaterialPageRoute(
//                   //                 builder: ((context) => NewCallCenter())));
//                   //         // Navigator.pop(
//                   //         //     context,
//                   //         //     MaterialPageRoute(
//                   //         //         builder: (context) =>
//                   //         //             const FirstPage()));
//                   //       },
//                   //     ),
//                   //   ],
//                   // ),
//                   // SizedBox(
//                   //   height: height * 0.03,
//                   // ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
