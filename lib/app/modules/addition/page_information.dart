import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaw_all/app/modules/addition/page_about.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenheight=MediaQuery.of(context).size.height;
    final double screenwidth=MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/information_page.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: screenheight*(3.75/25),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenwidth*(1/10),
                  right: screenwidth*(1/10),
                ),
                child: Container(
                  height: screenheight*(16/25),
                  width: screenwidth*(8/10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenheight*(2/25),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenwidth*(0.5/10),
                          right: screenwidth*(0.5/10),
                        ),
                        child: Text(
                          "About KawAll",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5B6656),
                            shadows: [
                              Shadow(
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.25),
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight*(1/25),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenwidth*(0.5/10),
                          right: screenwidth*(0.5/10),
                        ),
                        child: Text(
                          "\"KawAll\" (pronounced: ka-wal) is an online-based application that aims to guard its users from side effects and the likelihood of sexual crimes by implementing preventive and protective measures as well as recovery in the form of a flexible yet convenient application that is accessible to anyone.",
                          style: TextStyle(
                            height: 1.5,
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff5B6656),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: screenheight*(2/25),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: screenwidth*(0.5/10),
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Color(0xff788372), //background
                                onPrimary: Color(0xffFFFFFF),
                              ),
                              child: Text(
                                "next",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.0,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.white.withOpacity(0.3),
                                      offset: Offset(3.0, 3.0),
                                    )],
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
