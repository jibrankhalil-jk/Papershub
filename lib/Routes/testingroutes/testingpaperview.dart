import 'dart:developer';

import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papershub/Services/auth.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class testingPaperview extends StatefulWidget {
  var url;
  testingPaperview({
    this.url,
  });
  @override
  _testingPaperviewState createState() => _testingPaperviewState(this.url);
}

class _testingPaperviewState extends State<testingPaperview> {
  var url;
  _testingPaperviewState(this.url);
  var services = AuthServices();
  int paperwindow = 0;
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    SystemChrome.setEnabledSystemUIOverlays([]);
    return WillPopScope(
      onWillPop: () {
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
        Navigator.of(context).pop();
        return Future<bool>.value(true);
      },
      child: Scaffold(
          body: FutureBuilder(
              future: services.testpdfurl('$url'),
              // /classes/10/akueb/2019/english/eng/paper1
              builder: (context, snp) {
                if (snp.hasData) {
                  print('|' * 22);
                  print('${snp.data.toString()}');
                  print('|' * 22);
                  return Stack(children: [
                    SafeArea(
                      child: SfPdfViewer.network(
                        '${snp.data.toString()}',
                        onDocumentLoadFailed:
                            (PdfDocumentLoadFailedDetails details) {
                          AlertDialog(
                            title: Text("Error"),
                            content: Text('Failed to load the paper'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                        enableDoubleTapZooming: true,
                      ),
                    ),

                    // Positioned(
                    //   bottom: 10,
                    //   right: 10,
                    //   child: CircleAvatar(
                    //     radius: 30,
                    //   ),
                    // )
                  ]);
                } else {
                  return Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 6,
                        horizontal: MediaQuery.of(context).size.width / 6,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.network(
                              'https://assets10.lottiefiles.com/packages/lf20_ZVAR7L.json'),
                          Text("Loading from server")
                        ],
                      ),
                    ),
                  );
                }
              })),
    );
  }
}
