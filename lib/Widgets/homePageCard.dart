import 'package:flutter/material.dart';

import 'package:cherry_app/constants/styles.dart';

class homepageCard extends StatelessWidget {
  homepageCard(
      {required this.cardColor,
      required this.cardTitle,
      required this.cardSubtitle,
      required this.cardIcon,
      required this.lowerSubTitile});
  Color cardColor = Colors.white;
  Widget cardTitle;
  Widget cardSubtitle;
  Icon cardIcon;
  Widget lowerSubTitile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        elevation: 0,
        color: cardColor,
        child: SizedBox(
          height: 200,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ListTile(
                  title: cardTitle,
                  subtitle: cardSubtitle,
                  trailing: cardIcon,
                ),
                const SizedBox(height: 20),
                lowerSubTitile,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List cardKiList = [
  Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 0, right: 8, bottom: 8),
    child: homepageCard(
      cardColor: Colors.black,
      cardTitle: Text(
        "Product Designer",
        style: cardHeading,
      ),
      cardSubtitle: Text(
        "Tokopedia, Discord",
        style: cardSubtitle,
      ),
      cardIcon: const Icon(
        Icons.design_services_outlined,
        color: Colors.white,
        size: 40,
      ),
      lowerSubTitile: Text(
        "24 jobs available",
        style: lowerCardSubtitle,
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 0, right: 8, bottom: 8),
    child: homepageCard(
      cardColor: Colors.blueGrey.shade900,
      cardTitle: Text(
        "Game Tester",
        style: cardHeading,
      ),
      cardSubtitle: Text(
        "Rockstar, Ubisoft, EA",
        style: cardSubtitle,
      ),
      cardIcon: const Icon(
        Icons.gamepad_outlined,
        color: Colors.white,
        size: 40,
      ),
      lowerSubTitile: Text(
        "11 jobs available",
        style: lowerCardSubtitle,
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 0, right: 8, bottom: 8),
    child: homepageCard(
      cardColor: Colors.brown.shade900,
      cardTitle: Text(
        "Sfx Artist",
        style: cardHeading,
      ),
      cardSubtitle: Text(
        "Adobe, Netflix",
        style: cardSubtitle,
      ),
      cardIcon: const Icon(
        Icons.speaker,
        color: Colors.white,
        size: 40,
      ),
      lowerSubTitile: Text(
        "4 jobs available",
        style: lowerCardSubtitle,
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 0, right: 8, bottom: 8),
    child: homepageCard(
      cardColor: Colors.deepPurple.shade900,
      cardTitle: Text(
        "Vfx Artist",
        style: cardHeading,
      ),
      cardSubtitle: Text(
        "Netflix",
        style: cardSubtitle,
      ),
      cardIcon: const Icon(
        Icons.video_label_rounded,
        color: Colors.white,
        size: 40,
      ),
      lowerSubTitile: Text(
        "10 jobs available",
        style: lowerCardSubtitle,
      ),
    ),
  ),
];
