import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mo/nav_screen.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://www.kindpng.com/picc/m/649-6492563_facebook-like-icon-like-facebook-logo-white-black.png",
              height: 250,
              width: 200,
            ),
            Text(
              'Account Created!',
              style: GoogleFonts.inter(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your account has been created successfully.",
              style: GoogleFonts.inter(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            Text(
              "Press continue to start using app.",
              style: GoogleFonts.inter(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NavScreen()));
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
                          "Continue",
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
            Text(
              "By clicking start, you agree to our Privacy Policy",
              style: GoogleFonts.inter(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            Text(
              "our Teams and Conditions",
              style: GoogleFonts.inter(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
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
