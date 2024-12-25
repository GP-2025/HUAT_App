
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msccolone/theming/colors.dart';

class SelectedContentController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> contentWidgets = [
    Container(color: colorManager.huatInbox, child: Center(child: Text("Inbox", style: TextStyle(fontSize: 24)))),
    Container(color: Colors.purple, child: Center(child: Text("Sent", style: TextStyle(fontSize: 24)))),
    Container(color: Colors.green, child: Center(child: Text("Drafts", style: TextStyle(fontSize: 24)))),
    Container(color: Colors.orange, child: Center(child: Text("Deleted", style: TextStyle(fontSize: 24)))),

  ];
}