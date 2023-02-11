import 'package:cherry_app/Screens/jobOverview.dart';
import 'package:cherry_app/Widgets/homePageCard.dart';
import 'package:cherry_app/Widgets/rawWidgets.dart';
import 'package:cherry_app/constants/info.dart';
import 'package:flutter/material.dart';

import 'package:cherry_app/constants/styles.dart';
import 'package:flutter/rendering.dart';

class homePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Image(image: AssetImage("assets/logo.png")),
        title: Text(
          "Hire.io",
          style: appBarTitle,
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.jpg"),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 12.0, left: 0, right: 12, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Welcome back, Britney",
                      style: headings,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13, bottom: 13),
                      child: TextField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            filled: true,
                            fillColor: const Color(0xfff1f1f1),
                            prefix: Row(
                              children: const [
                                Icon(Icons.search),
                                Text(
                                  "Search",
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            suffix: Container(
                              color: Colors.black,
                              width: 10,
                              height: 10,
                            )),
                        enabled: true,
                      ),
                    ),
                    Text(
                      "Categories",
                      style: headings,
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: cardKiList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return cardKiList[index];
                        }),
                  )
                ],
              ),
              Text(
                "New Hiring",
                style: headings,
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: hiringInfo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => jobOverview()));
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/appLogo/appLogo${index + 1}.png"),
                          ),
                          title: Text(hiringInfo[index]['name'].toString()),
                          subtitle: Text(hiringInfo[index]['desc'].toString()),
                          trailing: IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
