import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mo/screens/accountcreated_screen.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

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
          'Confirm',
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
                'Confirm your number',
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
                  color: const Color.fromRGBO(111, 72, 197, 1),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(111, 72, 197, 1),
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
                  color: const Color.fromRGBO(111, 72, 197, 1),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(111, 72, 197, 1),
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
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Please enter the code just sent to',
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
            Center(
              child: Text(
                '+237 690 000 000',
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountCreatedScreen()));
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
                "Resend code in 00:55",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
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
