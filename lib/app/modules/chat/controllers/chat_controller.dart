import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class ChatController extends GetxController {
  auth.User? user = auth.FirebaseAuth.instance.currentUser;
  final docRef = FirebaseFirestore.instance.collection('chats');
  final chatId = Get.arguments['chatId'];
  final chatText = TextEditingController();

  // data doctor
  final doctorName = Get.arguments["name"].toString();
  final doctorImage = Get.arguments["image"].toString();

  // wordCount
  var wordChatCount = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    initWordChatCount();
  }

  void initWordChatCount() async {
    // Get wordChatCount from user collection reference
    FirebaseFirestore.instance.collection('users').doc(user!.uid).get().then(
      (value) {
        wordChatCount.value = int.parse(value.data()!['wordChatCount']);
      },
    );
  }

  uploadMessage(String message, String chatId) async {
    if (message.isNotEmpty) {
      // cek jumlah kata
      message = message.trim();
      final wordCount = message.split(' ').length;
      if (wordCount <= wordChatCount.value) {
        // kurangi jumlah kata
        wordChatCount.value -= wordCount;
        FirebaseFirestore.instance.collection('users').doc(user!.uid).update({
          'wordChatCount': wordChatCount.value,
        });
      } else {
        Get.snackbar(
          "Gagal",
          "SIlahkan top up terlebih dahulu",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      final email = user?.email;
      final name = user?.displayName;
      final date = Timestamp.now().toDate();

      final messageMap = {
        'sender_email': email,
        'sender_name': name,
        'message': message,
        'date': date,
      };
      var newMessage =
          FirebaseFirestore.instance.collection('chats').doc(chatId);
      messageMap['id'] = newMessage.id;
      newMessage.update(
        {
          'messages': FieldValue.arrayUnion([messageMap])
        },
      );
    }
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> getChat() {
    return FirebaseFirestore.instance
        .collection('chats')
        .doc(chatId)
        .snapshots();
  }

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
