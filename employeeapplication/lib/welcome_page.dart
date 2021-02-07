// import 'package:employeeapplication/admin_login_page.dart';
// import 'package:employeeapplication/employee_login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class WelcomePage extends StatefulWidget {
//   WelcomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _WelcomePageState createState() => _WelcomePageState();
// }

// class _WelcomePageState extends State<WelcomePage> {
//   Widget _employeeLoginButton() {
//     return InkWell(
//       onTap: () {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => EmployeeLoginPage()));
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.symmetric(vertical: 13),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(5)),
//             boxShadow: <BoxShadow>[
//               BoxShadow(
//                   color: Color(0xffd8e33).withAlpha(100),
//                   offset: Offset(2, 4),
//                   blurRadius: 8,
//                   spreadRadius: 2)
//             ],
//             color: Colors.white),
//         child: Text(
//           'Employee',
//           style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
//         ),
//       ),
//     );
//   }

//   Widget _adminLoginButton() {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => AdminLoginPage()));
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.symmetric(vertical: 13),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//           border: Border.all(color: Colors.white, width: 2),
//         ),
//         child: Text(
//           'Admin',
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//       ),
//     );
//   }

//   // Widget _label() {
//   //   return Container(
//   //     margin: EdgeInsets.only(top: 40, bottom: 20),
//   //     child: Column(
//   //       children: [
//   //         Text(
//   //           'Quick Login With Touch ID',
//   //           style: TextStyle(color: Colors.white, fontSize: 17),
//   //         ),
//   //         SizedBox(
//   //           height: 20,
//   //         ),
//   //         Icon(Icons.fingerprint, size: 90, color: Colors.white),
//   //         SizedBox(
//   //           height: 20,
//   //         ),
//   //         Text(
//   //           'Touch ID',
//   //           style: TextStyle(
//   //             color: Colors.white,
//   //             fontSize: 15,
//   //             decoration: TextDecoration.underline,
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

//   Widget _title() {
//     return RichText(
//       textAlign: TextAlign.center,
//       text: TextSpan(
//           text: 'E',
//           style: GoogleFonts.portLligatSans(
//             fontSize: 30,
//             fontWeight: FontWeight.w700,
//             color: Colors.white,
//           ),
//           children: [
//             TextSpan(
//               text: 'mpl',
//               style: TextStyle(color: Colors.black, fontSize: 30),
//             ),
//             TextSpan(
//               text: 'oyee',
//               style: TextStyle(color: Colors.white, fontSize: 30),
//             ),
//           ]),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(5)),
//               boxShadow: <BoxShadow>[
//                 BoxShadow(
//                     color: Colors.grey.shade200,
//                     offset: Offset(2, 4),
//                     blurRadius: 5,
//                     spreadRadius: 2)
//               ],
//               gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [Color(0xfffbb448), Color(0xffe46b10)])),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               _title(),
//               // SizedBox(
//               //   height: 80,
//               // ),
//               // _employeeLoginButton(),
//               // SizedBox(
//               //   height: 20,
//               // ),
//               // _adminLoginButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
