import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project02/screens/convertingscreen.dart';
//import 'package:project02/screens/convertingscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(52.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 380,
                  height: 162,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15.0,
                          offset: Offset(1.0, 2.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffC6CBFF),
                          Color(0xFF5B6BF1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Currency\nConverter',
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 47,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                
                Text(
                  'You can convert Sri Lankan Rupees to the currency of any of these countries.',
                  style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    shadows: [
                      const Shadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  '-USA\n-Australia\n-Canada\n-Russia\n-UAE\n-Germany\n-France\n-Ireland\n-Italy',
                  style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 248, 231, 173),
                    shadows: [
                      const Shadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const Convertingscreen()
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Text(
                            'Start Here ->',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
