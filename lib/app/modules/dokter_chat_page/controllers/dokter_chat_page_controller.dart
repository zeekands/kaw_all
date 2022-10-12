import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DokterChatPageController extends GetxController {
  User? user = FirebaseAuth.instance.currentUser;
  final docRef = FirebaseFirestore.instance.collection('chats');
  final chatId = Get.arguments.toString();
  final chatText = TextEditingController();

  uploadMessage(String message, String chatId) async {
    final email = user?.email;
    final name = user?.displayName;
    final date = Timestamp.now().toDate();

    final messageMap = {
      'sender_email': email,
      'sender_name': name,
      'message': message,
      'date': date,
    };
    var newMessage = FirebaseFirestore.instance.collection('chats').doc(chatId);
    messageMap['id'] = newMessage.id;
    newMessage.update(
      {
        'messages': FieldValue.arrayUnion([messageMap])
      },
    );
  }
}
