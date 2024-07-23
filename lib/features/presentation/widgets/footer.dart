import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constant/links.dart';
import 'package:my_portfolio/core/util/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
//TODO
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Developed by "),
            InkWell(
              onTap: () => openURL(gitHub),
              child: const Text(
                " Faisal Faraj 💙",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(" © 2023"),
          ],
        ),
      ),
    );
  }
}
