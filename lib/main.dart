import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dimas Purnomo',
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: const DecorationImage(
                        image: AssetImage('images/myprofil.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  const Text(
                    "Dimas Purnomo",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  const Text(
                    "Android. Flutter. Swift.\n Likes Traveling.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 97, 94, 94),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w100),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ButtonAction(
                        title: "Github",
                        icon: FontAwesomeIcons.github,
                        color: Colors.black,
                        link: () {
                          launch("https://github.com/d1mzpur");
                        },
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      ButtonAction(
                        title: "Instagram",
                        icon: FontAwesomeIcons.instagram,
                        color: Colors.purple,
                        link: () {
                          launch("https://www.instagram.com/d1mzpur/");
                        },
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      ButtonAction(
                        title: "Linkedin",
                        icon: FontAwesomeIcons.linkedin,
                        color: const Color(0xff0e76a8),
                        link: () {
                          launch("https://www.linkedin.com/in/d1mzpur");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonAction extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback link;

  const ButtonAction({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: link,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            icon,
            color: color,
          ),
          const Padding(padding: EdgeInsets.only(left: 15)),
          Text(
            title,
            style: const TextStyle(fontSize: 15, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
