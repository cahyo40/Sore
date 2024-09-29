import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/messages/controller/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MessagesView')),
        body: const SafeArea(child: Text('MessagesViewController')));
  }
}
