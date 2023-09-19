import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointofsales/ui/dashboard/dashboardPage.dart';
import 'package:pointofsales/ui/login/mainPage.dart';

// import 'package:meteran/model/user_model.dart';
// import 'package:pointofsales/ui/dashboard/dashboardPage.dart';
// import 'package:meteran/ui/lupa_password/forgot.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<AdminPage> {
  // User user = User();
  var jsonObj;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = 'Rifki';
  String password = '12345';
  String alert = '';
  bool _isObscure = true;
  void buttonLogin() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => const Dashboard())));
  //   // if (_formkey.currentState!.validate()) {
  //   //   // jsonObj = await User.login(emailController.text, passwordController.text);

  //   //   if (jsonObj['status'] == "true") {
  //   //     // user = User.createUser(jsonObj['result']);

  //   //     // ignore: use_build_context_synchronously
  //   //     Navigator.pushReplacement(
  //   //         context,
  //   //         MaterialPageRoute(
  //   //             builder: (context) => Dashboard(
  //   //                   // idUser: user.id,
  //   //                 )));
  //   //     SnackBar snackBar = const SnackBar(content: Text('Login Berhasil'));
  //   //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   //   } else {
  //   //     setState(() {
  //   //       alert = "${jsonObj['response']}";
  //   //     });
  //   //   }
  //   //    Navigator.pushReplacement(
  //   //       context, MaterialPageRoute(builder: (context) => Dashboard()));
  //   //   SnackBar snackBar = const SnackBar(content: Text('Login Berhasil'));
  //   //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   // }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(12, 53, 106, 1.000),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(height * 0.01),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'img/logonew.png',
                        height: 200,
                        width: 150,
                      ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.55,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "ADMIN",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            //Username
                            Container(
                              width: width * 0.70,
                              child: TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    FontAwesomeIcons.user,
                                    size: 20,
                                  ),
                                  labelText: "Email",
                                ),
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return "Email kosong";
                                  }
                                  return null;
                                }),
                              ),
                            ),

                            Container(
                                width: width * 0.68,
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        FontAwesomeIcons.lock,
                                        size: 20,
                                      ),
                                      labelText: 'Password',
                                      // this button is used to toggle the password visibility
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          })),
                                  validator: ((value) {
                                    if (value!.isEmpty) {
                                      return "Password kosong";
                                    }
                                    return null;
                                  }),
                                )),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            //notif
                            Text(
                              alert,
                              style: const TextStyle(color: Colors.red),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  child: const Text(
                                    "Lupa Password?",
                                    // style: TextStyle(Colors.white)
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //     // context,
                                    //     // MaterialPageRoute(
                                    //     //     builder: (context) =>
                                    //     //         const ForgotPassword())
                                    //             );
                                  },
                                ),
                                Container(
                                  width: width * 0.05,
                                ),
                              ],
                            ),
                            MaterialButton(
                              padding: const EdgeInsets.all(20),
                              minWidth: 250,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Menyesuaikan angka untuk membulatkan sudut
                              ),
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              color: Colors.blue,
                              onPressed: () {
                                buttonLogin();
                              },
                            ),
                            Column(
                              children: [
                                TextButton(
                                  child: const Text(
                                    "Kembali ke Halaman Awal",
                                    // style: TextStyle(Colors.white)
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const FirstPage())));
                                    // Navigator.pop(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const FirstPage()));
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
