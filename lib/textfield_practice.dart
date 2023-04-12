// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:yummy/forgotpass_scrn.dart';
// import 'package:yummy/homescrn.dart';
// import 'package:yummy/registerscrn.dart';
// import 'package:yummy/splashscrn.dart';
// import 'package:yummy/ui_helper/eleButon.dart';
// import 'package:yummy/ui_helper/txtstyle.dart';

// main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Splash(),
//   ));
// }

// String err = " ";
// var mail;
// var passw;
// TextEditingController emailController = TextEditingController();
// TextEditingController passController = TextEditingController();

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   FirebaseDatabase database = FirebaseDatabase.instance;
//   List<Map> data = [];
//   GlobalKey<FormState> login = GlobalKey<FormState>();

//   Future<void> validate() async {
//     if (login.currentState!.validate()) {
//       DatabaseEvent d = await database.ref('User').once();
//       Map temp = d.snapshot.value as Map;
//       data.clear();
//       for (int i = 0; i < temp.length; i++) {
//         int index = 0;
//         temp.forEach((key, value) async {
//           data.add(value);

//           //print(data[index]['email']);
//           //print(emailController.text);
//           if (data[index]['email'] == emailController.text &&
//               data[index]['pass'] == passController.text) {
//             var sharePref = await SharedPreferences.getInstance();
//             sharePref.setBool(SplashState.KEYLOGIN, true);
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Home(),
//                 ));
//             passController.clear();
//             emailController.clear();
//             err = " ";
//           } else {
//             err = "Invalid Email or Password";
//           }
//           index += 1;
//         });
//         print('-----  $data');
//         setState(() {});
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('asset/images/black_photo.jpg'),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Center(
//               child: Form(
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 key: login,
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Text("Hey there,", style: myStyle()),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       "Welcome Back",
//                       style: headStyle(color),
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: emailtxtfield(),
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.all(8),
//                         child: passtxtfield()),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text("$err", style: const TextStyle(color: Colors.red)),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const ForgotPass(),
//                               ));
//                         },
//                         child: Text(
//                           "Forgot your password?",
//                           style: linkStyle(),
//                         )),
//                     const SizedBox(
//                       height: 120,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: SizedBox(
//                         width: 400,
//                         height: 50,
//                         child: eleButton(
//                             text: 'Login',
//                             bgcolor: Colors.white,
//                             textStyle: myStyleBlack(),
//                             callback: () async {
//                               validate();
//                             }),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Don't have an account yet?", style: myStyle()),
//                         InkWell(
//                             onTap: () {
//                               Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => Register(),
//                                   ));
//                             },
//                             child: Text(
//                               " Register",
//                               style: linkStyle(),
//                             ))
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class emailtxtfield extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => emailtxtfieldState();
// }

// class emailtxtfieldState extends State<emailtxtfield> {
//   String err = '';
//   bool validator = true;
//   void clearemailText() {
//     emailController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       style: myStyle(),
//       controller: emailController,
//       onChanged: (val) {
//         setState(() {});
//       },
//       keyboardType: TextInputType.emailAddress,
//       validator: MultiValidator([
//         EmailValidator(errorText: "Invalid Email"),
//         RequiredValidator(errorText: "Required"),
//         MinLengthValidator(5, errorText: "Invali Email")
//       ]),
//       decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.white)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.blue)),
//           errorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.red)),
//           focusedErrorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.red)),
//           prefixIcon: Icon(
//             Icons.email,
//             color: color,
//           ),
//           label: Text(
//             "Email",
//             style: myStyle(),
//           ),
//           hintText: "Enter Email",
//           hintStyle: myStyle()),
//     );
//   }
// }

// class passtxtfield extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => passtxtfieldState();
// }

// class passtxtfieldState extends State<passtxtfield> {
//   String err = '';
//   bool validator = true;
//   bool pass = true;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       style: myStyle(),
//       controller: passController,
//       obscureText: pass,
//       onChanged: (val) {
//         setState(() {});
//       },
//       validator: MultiValidator([
//         MinLengthValidator(8, errorText: 'Atleast 8 Character Required'),
//         RequiredValidator(errorText: "Required")
//       ]),
//       decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.white)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.blue)),
//           errorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.red)),
//           focusedErrorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: const BorderSide(color: Colors.red)),
//           prefixIcon: Icon(
//             Icons.password,
//             color: color,
//           ),
//           label: Text(
//             "Password",
//             style: myStyle(),
//           ),
//           hintText: "Enter Password",
//           hintStyle: myStyle(),
//           suffixIcon: IconButton(
//             icon: pass
//                 ? Icon(
//                     Icons.visibility_off,
//                     color: color,
//                   )
//                 : Icon(
//                     Icons.visibility,
//                     color: color,
//                   ),
//             onPressed: () {
//               pass = !pass;
//               setState(() {});
//             },
//           )),
//     );
//   }
// }
