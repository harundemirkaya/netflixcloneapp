import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixcloneapp/theme/colors.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: dark,
      title: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 25),
          child: Image.asset(
            './assets/img/logo.png',
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25),
          child: Text(
            "Privacy",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 15,
            right: 15,
          ),
          child: Text(
            "Sign In",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget getBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: dark,
      ),
      child: Center(
          child: Text(
        "Unlimited movies, TV shows, and more.",
        style: TextStyle(
          color: light,
          fontSize: 32,
        ),
      )),
    );
  }
}
