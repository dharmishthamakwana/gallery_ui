import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;

  @override
  Widget build(BuildContext context) {
    homeprovidertrue = Provider.of<Homeprovider>(context, listen: true);
    homeproviderfalse = Provider.of<Homeprovider>(context, listen: false);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purple, Colors.orange],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Video"),
            backgroundColor: Colors.blue.shade900,
          ),
          body: ListView.builder(
            itemCount: homeproviderfalse!.pic.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade200, Colors.purple.shade200],
                    ),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 150,
                      width: 80,
                      child: Image.asset(
                        "${homeproviderfalse!.pic[index]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "${homeproviderfalse!.name[index]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    subtitle: Text("${homeproviderfalse!.Date[index]}"),
                    trailing: Icon(
                      Icons.video_call_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
