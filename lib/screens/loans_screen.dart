import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 72, 197, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SlidingUpPanel(
          parallaxEnabled: true,
          parallaxOffset: 0.2,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          minHeight: MediaQuery.of(context).size.height * 0.5,
          body: const BodyForSlidable(),
          panelBuilder: (controller) => const SlidingPannelBottom()),
    );
  }
}

class SlidingPannelBottom extends StatelessWidget {
  const SlidingPannelBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(230, 233, 239, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.sort),
                    Text(
                      'All loans: New to old',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const Icon(Icons.search)
                  ],
                ),
              ),
            ),
            Text(
              "Novembre 2020",
              style: GoogleFonts.inter(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext contxt) {
                        return Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0))),
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 10,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            111, 72, 197, 1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                ),
                                Text(
                                  "Transaction detail",
                                  style: GoogleFonts.inter(
                                      color:
                                          const Color.fromRGBO(51, 51, 51, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  "#125584585",
                                  style: GoogleFonts.inter(
                                      color:
                                          const Color.fromRGBO(51, 51, 51, 1),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Amount:",
                                      style: GoogleFonts.inter(
                                          color: const Color.fromRGBO(
                                              51, 51, 51, 1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "-250 XAF",
                                      style: GoogleFonts.inter(
                                          color: const Color.fromRGBO(
                                              51, 51, 51, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Collected date:",
                                            style: GoogleFonts.inter(
                                                color: const Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "05/03/2021",
                                            style: GoogleFonts.inter(
                                                color: const Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Divider(
                                          height: 6,
                                          thickness: 1,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Due date:",
                                            style: GoogleFonts.inter(
                                                color: const Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "05/03/2021",
                                            style: GoogleFonts.inter(
                                                color: const Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Divider(
                                          height: 6,
                                          thickness: 1,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Description:",
                                            style: GoogleFonts.inter(
                                                color: const Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          SizedBox(
                                            width: 190,
                                            child: Text(
                                              "Egestas massa augue massa mauris tincidunt. Maecenas nunc tempor hac enim quam cras mattis interdum elementum. Libero pellentesque et nunc, vestibulum porttitor tortor porttitor urna, in. Id lobortis suspendisse eget convallis.",
                                              style: GoogleFonts.inter(
                                                  color: const Color.fromRGBO(
                                                      51, 51, 51, 1),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Divider(
                                          height: 6,
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ));
                      });
                },
                child: const LoanListWidget()),
            const LoanListWidget(),
            const LoanListWidget(),
            const LoanListWidget(),
            const LoanListWidget(),
            const LoanListWidget(),
            const LoanListWidget(),
            const LoanListWidget()
          ],
        ),
      ),
    );
  }
}

class LoanListWidget extends StatelessWidget {
  const LoanListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "#125584585",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              Text(
                "250 XAF",
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(39, 174, 96, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ],
          ),
          Text(
            "Collected date : 05/03/2021",
            style: GoogleFonts.inter(
                color: const Color.fromRGBO(51, 51, 51, 1),
                fontWeight: FontWeight.w500,
                fontSize: 10),
          ),
          Text(
            "Due date : 25/12/2021",
            style: GoogleFonts.inter(
                color: const Color.fromRGBO(51, 51, 51, 1),
                fontWeight: FontWeight.w500,
                fontSize: 10),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(
              height: 4,
            ),
          )
        ],
      ),
    );
  }
}

class BodyForSlidable extends StatelessWidget {
  const BodyForSlidable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Loans',
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
          ),
          Text(
            'Description text here',
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              color: Colors.white,
              height: 2,
            ),
          ),
          Text(
            'Account balance',
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2.587,85',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 40),
              ),
              Text(
                'XAF',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ],
          ),
          Text(
            'Update 5 min ago',
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
