import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quizsection extends StatefulWidget {
  const Quizsection({Key? key}) : super(key: key);

  @override
  _QuizsectionState createState() => _QuizsectionState();
}

class _QuizsectionState extends State<Quizsection> {
  List Subjects = [
    'English',
    'Urdu',
    'Biology',
    'Computer',
    'Maths',
    'Pst',
    'Physics'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Stack(
              children: [
                Image.asset(
                  "Assets/Images/quiza.png",
                  width: MediaQuery.of(context).size.width / 2.7,
                  height: 170,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Text("1244"),
                ),
                Positioned(
                  left: 40,
                  top: 50,
                  child: Text(
                    "1244",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Image.asset(
              "Assets/Images/quizb.png",
              width: MediaQuery.of(context).size.width / 2.1,
              height: 170,
              fit: BoxFit.fill,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Column(
            children: [
              Row(
                children: [],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          child: ListView.builder(
            itemCount: Subjects.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int a) {
              return InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('you pressed ${Subjects[a]}'),
                  ));
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Text('$a'),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('${Subjects[a]}')
                        ],
                      ),
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}
