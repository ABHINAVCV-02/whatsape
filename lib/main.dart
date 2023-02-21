import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'list1.dart';
import 'list2.dart';
import 'list3.dart';
import 'list4.dart';
void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context){
        return MaterialApp(

            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home:Whatsapp());
      }));
}




class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.systemGreen,
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.camera_alt),
            const SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('New gruop')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Payments')),
                  PopupMenuItem(child: Text('Settings')),
                ],
                child: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .1,
              child: const Tab(
                icon: Icon(Icons.people),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: const Tab(
                text: "Chats",
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: const Tab(
                text: "Status",
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: const Tab(
                text: "Calls",
              ),
            )
          ]),
        ),
        body: TabBarView(
          children: [Comm(), Chat(), Stat(), Calls()],
        ),
      ),
    );
  }
}