import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:kaw_all/app/routes/app_pages.dart';
import 'package:kaw_all/app/utils/auth.dart';

import '../controllers/dokter_home_controller.dart';

class DokterHomeView extends GetView<DokterHomeController> {
  const DokterHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Dokter'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Container(
          //   height: Get.height,
          //   width: Get.width,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/images/fixbg.png"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Column(
            children: [
              Flexible(
                child: StreamBuilder<QuerySnapshot>(
                  stream: controller.getChatRoom(),
                  builder: (context, snapshot) {
                    return snapshot.hasData
                        ? ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              var lastMessage = snapshot.data!.docs[index]
                                  ['messages'] as List;
                              return Card(
                                child: ListTile(
                                  onTap: () {
                                    Get.toNamed(Routes.DOKTER_CHAT_PAGE,
                                        arguments: snapshot.data!.docs[index]
                                            ['id']);
                                  },
                                  title: Text(
                                    snapshot.data!.docs[index]['users'][0],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(lastMessage.last['message']),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/foto_profil_pasien.png"),
                                  ),
                                ),
                              );
                            },
                          )
                        : Container();
                  },
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Authentication.signOut();
            },
            child: Center(
              child: Text(
                'logout',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
