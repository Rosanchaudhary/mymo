import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mo/screens/doc_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 40,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),
        ),
        title: Text(
          'Sign Up',
          style: GoogleFonts.inter(
              color: const Color.fromRGBO(51, 51, 51, 1),
              fontWeight: FontWeight.w700,
              fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Please fill the infos below',
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(111, 72, 197, 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "1",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 5,
                  width: 90,
                  color: const Color.fromRGBO(189, 189, 189, 1),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(189, 189, 189, 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "2",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 5,
                  width: 90,
                  color: const Color.fromRGBO(189, 189, 189, 1),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(189, 189, 189, 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "3",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Name",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: const Icon(CupertinoIcons.person),
                    label: Text(
                      "as on national ID Card",
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(130, 130, 130, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    border: const OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Phone Number",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: const Icon(CupertinoIcons.phone),
                    label: Text(
                      "MTN Mobile money or Orange money",
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(130, 130, 130, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    border: const OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Email Address",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: const Icon(CupertinoIcons.mail),
                    label: Text(
                      "Please enter correctly",
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(130, 130, 130, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    border: const OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Password",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    suffixIcon: const Icon(CupertinoIcons.eye),
                    prefixIcon: const Icon(CupertinoIcons.person),
                    label: Text(
                      "With capitals and symbols",
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(130, 130, 130, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    border: const OutlineInputBorder()),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DocScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 60,
                  width: 335,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(111, 72, 197, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Aleady have an account?",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
            Center(
              child: Text(
                "Sign In",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(111, 72, 197, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
