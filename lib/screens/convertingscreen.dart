// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Convertingscreen extends StatefulWidget {
  const Convertingscreen({super.key});

  @override
  State<Convertingscreen> createState() => _ConvertingscreenState();
}

class _ConvertingscreenState extends State<Convertingscreen> {
  final TextEditingController wordcontroller = TextEditingController();
  final TextEditingController amountcontroller = TextEditingController();

  double amount = 0.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2C64D2),
                  Color(0xFF043594),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
              child: Padding(
                padding: const EdgeInsets.all(52.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        '-USA (USD)\n-Australia (AUD)\n-Canada (CAD)\n-Russia (RUB)\n-UAE (DIR)\n-Germany/France/Ireland/Italy (EUR)',
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFF45D),
                          shadows: [
                            const Shadow(
                              color: Colors.black,
                              blurRadius: 10.0,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      Text(
                        'You can select your choice from any of these countries.\n******************************\nPlease make sure to add the word in the brackets to prompt.',
                        style: GoogleFonts.poppins(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        color: Colors.amber.shade50,
                        child: TextField(
                          controller: wordcontroller,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            hintText: 'Enter Currency', hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        color: Colors.amber.shade50,
                        child: TextField(
                          controller: amountcontroller,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Amount', hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          String currency = wordcontroller.text.toUpperCase();
                          if(currency == "USD"){
                            double foreignAmount = double.tryParse(amountcontroller.text) ?? 0.00;
                            setState(() {
                              amount = foreignAmount + 303.68;
                              
                            });
                          }else if(currency == "AUD"){
                            double foreignAmount = double.tryParse(amountcontroller.text) ?? 0.00;
                            setState(() {
                              amount = foreignAmount + 204.78;
                              
                            });
                          }else if(currency == "CAD"){
                            double foreignAmount = double.tryParse(amountcontroller.text) ?? 0.00;
                            setState(() {
                              amount = foreignAmount + 222.93;
                              
                            });
                            }else if(currency == "RUB"){
                            double foreignAmount = double.tryParse(amountcontroller.text) ?? 0.00;
                            setState(() {
                              amount = foreignAmount + 3.42;
                              
                            });
                            }else if(currency == "DIR"){
                            double foreignAmount = double.tryParse(amountcontroller.text) ?? 0.00;
                            setState(() {
                              amount = foreignAmount + 82.68;
                              
                            });
                            }else if(currency == "EUR"){
                            double foreignAmount = double.tryParse(amountcontroller.text) ?? 0.00;
                            setState(() {
                              amount = foreignAmount + 328.74;
                              
                            });
                            }else{
                            setState(() {
                              amount = 0.00;
                            });
                          }
                          print("Calculate");
                        },
                       
                        color: Colors.lightBlue,
                        child: Text('Calculate',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF06039C))),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text("Converted ->>  $amount",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ),
                ),
              ),
            ));
  }
}
