import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mo/screens/signup_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 80,
        ),
        Text(
          "Welcome to",
          style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 29.3),
        ),
        const SizedBox(
          height: 46,
        ),
        Image.asset("assets/logo.jpg"),
        const SizedBox(
          height: 28,
        ),
        Text(
          "Your mobile wallet in the global financial system",
          style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 12),
        ),
        const SizedBox(
          height: 57,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
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
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ),
        Text(
          "Or",
          style: GoogleFonts.inter(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 60,
            width: 335,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(111, 72, 197, 1),
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                "Sign In",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(111, 72, 197, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
