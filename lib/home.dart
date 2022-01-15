import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    
    // Counter counter = Counter();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 5,
        title: Text(
          "Tasbeeh Counter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
            fontFamily: 'times new roman',
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/unnamed.png",
            ),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 200, child: Text("")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<Counter>(builder: (context, Counter counter, dynamic) {
                  return Container(
                      child: SizedBox(
                    width: 230,
                    height: 90,
                    child: Container(
                        color: counter.color,
                        child: Text("${counter.count}",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40.0,
                              fontFamily: 'times new roman',
                              color: Colors.black,
                            ))),
                  ));
                }),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 45.0, 50.0, 15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.green,
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(Icons.refresh, color: Colors.white),
                              ),
                              onTap: () {
                                Provider.of<Counter>(context, listen: false)
                                    .refresh();
                              },
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipOval(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: Colors.green,
                                  child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.lightbulb,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    Provider.of<Counter>(context, listen: false)
                                        .light(Colors.red);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
                ClipOval(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.red[400],
                      child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Icon(Icons.add, color: Colors.white)),
                      onTap: () {
                        Provider.of<Counter>(context, listen: false)
                            .increament();
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
