import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../selfdefense_list/selfdefense_list.dart';

class SelfDefenseDetail extends StatelessWidget {
  final CourseList list;

  const SelfDefenseDetail ({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 70,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: Container(
                      child: Center(child: Text(
                          list.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )
                      )),
                      width: double.maxFinite,
                      padding: EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)
                          )
                      )
                  )
              ),
              pinned: true,
              backgroundColor: Color(0xff7fa291),
              expandedHeight: 600,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  list.imageCover,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text(
                        list.material,
                        style: TextStyle(
                          height: 1.7,
                          fontSize: 15,
                          letterSpacing: 0.0,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                )
            ),
          ]
      ),
      bottomNavigationBar: Container(
          height: 70,
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
          decoration: BoxDecoration(
              color: Color(0xff7fa291),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
              )
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffAFC5A5), //background
                    onPrimary: Color(0xffFFFFFF),
                  ),
                  child: Text(list.buttontext),
                  onPressed: () {
                    var url = list.ytlink;
                    launchUrl (
                    Uri.parse(url),
                  );
                  }
                ),
              ]
          )
      ),
    );

  }
}