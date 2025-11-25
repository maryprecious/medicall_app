import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: SizedBox(
        //       height: _myToolbarHeight,
        //       child: Image.asset(_logoAsset),
        //     ),
        //     toolbarHeight: _myToolbarHeight,
        //   ),
        // ),
      ),
    );
  }
}
