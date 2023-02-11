import 'package:cherry_app/constants/overview.dart';
import 'package:cherry_app/constants/styles.dart';
import 'package:flutter/material.dart';

class jobOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Image(image: AssetImage('assets/office.jpg')),
                ),
                const Positioned(
                  top: 220,
                  left: 150,
                  child: CircleAvatar(
                    radius: 57,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/appLogo/appLogo1.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text("              Sr. Software Engineer", style: headings, textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Text("  Overview", style: headings2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: overview,
          ),
        ],
      ),
    );
  }
}
