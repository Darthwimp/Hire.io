import 'package:cherry_app/constants/jobInfo.dart';
import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class hiringScreen extends StatelessWidget {
  const hiringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Text("${jobInfo.length} Jobs Available", style: headings,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: jobInfo.length,
                itemBuilder: (BuildContext context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/hiringLogo/hiringLogo${index+1}.png"),),
                      title: Text(jobInfo[index]['title'].toString()),
                      subtitle: Text(jobInfo[index]['sub'].toString()),
                      trailing: IconButton(icon: const Icon(Icons.more_vert), onPressed: () {},),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 30,
                            color: Colors.grey.shade400,
                            child: Center(child: Text(jobInfo[index]['type1'].toString())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 30,
                            color: Colors.grey.shade400,
                            child: Center(child: Text(jobInfo[index]['type2'].toString())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 30,
                            color: jobInfo[index]['more'] !=null ? Colors.grey.shade400 : Colors.white,
                            child: Center(child: Text(jobInfo[index]['more'].toString())),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }),
            ),
          ),
        ],
      )
    );
  }
}
