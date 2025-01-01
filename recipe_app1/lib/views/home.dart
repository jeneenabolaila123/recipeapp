import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'platform_stub.dart' if (dart.library.io) 'platform_io.dart';

final platform = getPlatform();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff213450), Color(0xff071930)],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: kIsWeb ? 30 : (platform == 'Android' ? 60 : 30),
              horizontal: 30,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Delicious Recipe ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "App Recipe",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "What you will cook today?",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "Just enter your ingredient and we will find the proper recipe for you!!",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
