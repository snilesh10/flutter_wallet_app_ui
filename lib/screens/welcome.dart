import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/routes.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child:
                  Image(image: AssetImage('assets/images/wallet-welcome.jpg')),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF6857E8),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90)),
              ),
              child: Column(
                children: [
                  Text(
                    'Easiest Way To Manage Your Wallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontFamily: GoogleFonts.lato().fontFamily),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      print('You clicked me');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'GET STARTED!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
