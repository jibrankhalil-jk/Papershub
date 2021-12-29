import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../constants.dart';

class Intros extends StatefulWidget {
  const Intros({Key? key}) : super(key: key);

  @override
  _IntrosState createState() => _IntrosState();
}

constants finalconst = constants();
final introKey = GlobalKey<IntroductionScreenState>();

class _IntrosState extends State<Intros> {
  @override
  Widget build(BuildContext context) {
    Widget _buildImage(String assetName, [double width = 350]) {
      return Container(
        child: Image.asset(
          'Assets/intros/images/$assetName',
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
      );
    }

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 21.0,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(18, 178, 229, 1)),
      bodyTextStyle: TextStyle(fontSize: 15.0),
      descriptionPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            title: "Learning",
            body:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus magna viverra auctor sociis id nisl erat eu.",
            image: _buildImage('a.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Learning",
            body:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus magna viverra auctor sociis id nisl erat eu.",
            image: _buildImage('b.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Learning",
            body:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus magna viverra auctor sociis id nisl erat eu.",
            image: _buildImage('c.png'),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => Navigator.pushNamed(context, '/FirstSet'),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        //rtl: true, // Display as right-to-left
        skip: const Text(
          'Skip',
          style: TextStyle(color: Color.fromRGBO(18, 178, 229, 1)),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Color.fromRGBO(18, 178, 229, 1),
        ),
        done: CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          backgroundColor: finalconst.blue,
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(6),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color.fromRGBO(140, 145, 147, 1.0),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            activeColor: Color.fromRGBO(18, 178, 229, 1)),
      ),
    );
  }
}
