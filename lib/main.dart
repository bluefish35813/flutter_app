import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FightClimateChange',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            title: Text('FightClimateChange')
        ),
        body:
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  navigateToSubPage(context);
                },
                child: Container(
                  color: Colors.green,
                  height: height * 0.445,
                  child: new Text("Reducing Your Carbon Footprint",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
              new GestureDetector(
                onTap: () {
                  navigateToSubSubPage(context);
                },
                child: Container(
                  color: Colors.lightGreen,
                  height: height * 0.445,
                  child: new Text("Find Organizations to Donate To",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ],
          ),
        )
    );
  }
}
Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
}

Future navigateToSubSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubSubPage()));
}

functionOne(context) {
  navigateToFirstPage(context);
}

functionTwo(context) {
  navigateToSecondPage(context);
}

final List<Function(BuildContext context)> ontaps = [
  functionOne,
  functionTwo
];

functionThird(context) {
  navigateToThirdPage(context);
}

functionFourth(context) {
  navigateToFourthPage(context);
}

functionFifth(context) {
  navigateToFifthPage(context);
}

functionSixth(context) {
  navigateToSixthPage(context);
}

functionSeventh(context) {
  navigateToSeventhPage(context);
}

functionEighth(context) {
  navigateToEighthPage(context);
}

functionNinth(context) {
  navigateToNinthPage(context);
}

functionTenth(context) {
  navigateToTenthPage(context);
}

functionEleventh(context) {
  navigateToEleventhPage(context);
}

functionTwelfth(context) {
  navigateToTwelfthPage(context);
}

final List<Function(BuildContext context)> ontapss = [
  functionThird,
  functionFourth,
  functionFifth,
  functionSixth,
  functionSeventh,
  functionEighth,
  functionNinth,
  functionTenth,
  functionEleventh,
  functionTwelfth
];


class SubPage extends StatelessWidget {
  @override
  List<String> litems = ["Driving Emissions Calculator","Drive Less","Buy Fuel Efficient Cars","Turn Lights Off","Use Reusable Bags","Buy Local "
      "Foods","Decrease Water Use","Use LED Lightbulbs","Avoid Flying","Insulate Your Home"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ways to Reduce Your Carbon Footprint'),
        backgroundColor: Colors.blueAccent,
      ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child:
                Card(
                  child: ListTile(
                    title: Text(litems[index],style: TextStyle(fontSize: 25)),
                  ),
                ),
                onTap: () {
                  if(index == 0) {
                    ontaps[index](context);
                  }
                },
              );
            },

            itemCount: 10),
    );
  }
}

class SubSubPage extends StatelessWidget {
  @override
  List<String> litems = ["350.org","Natural Resources Defense Council, Inc.","Union of Concerned Scientists"
      ,"The Climate Group","Friends of the Earth International","Greenpeace International","Environmental"
        " Defense Fund"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organizations to Donate To'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child:
                Card(
                  child: ListTile(
                    title: Text(litems[index],style: TextStyle(fontSize: 25)),
                  ),
                ),
              onTap: () {
                ontapss[index](context);
              },
            );
          },

          itemCount: 7),
    );
  }
}

Future navigateToFirstPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
}

Future navigateToSecondPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
}

Future navigateToThirdPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
}

Future navigateToFourthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FourthPage()));
}

Future navigateToFifthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FifthPage()));
}

Future navigateToSixthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SixthPage()));
}

Future navigateToSeventhPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SeventhPage()));
}

Future navigateToEighthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => EighthPage()));
}

Future navigateToNinthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => NinthPage()));
}

Future navigateToTenthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => TenthPage()));
}

Future navigateToEleventhPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => EleventhPage()));
}

Future navigateToTwelfthPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => TwelfthPage()));
}

class FirstPage extends StatelessWidget {
  TextEditingController myController = TextEditingController();
  TextEditingController myControllerone = TextEditingController();
  TextEditingController thirdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Driving Emissions Calculator'),
        backgroundColor: Colors.blueAccent,
      ),
      body:
      new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                controller: myController,
                decoration: new InputDecoration(labelText: "Enter MPG of your car"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
              new TextField(
                controller: myControllerone,
                decoration: new InputDecoration(labelText: "Enter miles driven"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),

              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  calculate();
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the user has entered by using the
                        // TextEditingController.

                        content: Text(thirdController.text),
                      );
                    },
                  );
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          )),
    );
  }
  void calculate() {
    if (myController.text.trim().isNotEmpty &&
        myControllerone.text.trim().isNotEmpty) {
      final firstValue = double.parse(myController.text);
      final secondValue = double.parse(myControllerone.text);
      thirdController.text = ((secondValue / firstValue)*(8887/907184.74)).toString() + " tons of CO2";
    }
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about two...'),
        backgroundColor: Colors.blueAccent,
      ),

    );
  }
}


class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = '350.org';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about 350.org...'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: '350.org is an organization that is working to stop climate change'
                    ' by eliminating the use of fossil fuels.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: '350.org',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://www.nrdc.org/';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Natural Resources Defense Council, Inc.'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: 'The Natural Resources Defense Council works to decrease '
                    'the use of fossil fuels and applies clean energy.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: 'https://www.nrdc.org/',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://www.ucsusa.org/';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Union of Concerned Scientists'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: 'The Union of Concerned Scientists is a science organization '
                    'which advocates for stopping climate change as well as '
                    'renewable energy and decreasing air pollution from the '
                    'transportation that we use.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: 'https://www.ucsusa.org/',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://www.theclimategroup.org/';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about The Climate Group'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: 'The Climate Group strives to drive climate action by '
                    'working with organizations to decrease carbon emissions.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: 'https://www.theclimategroup.org/',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class SeventhPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://www.foei.org/';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about The Climate Group'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: 'Friends of the Earth International advocates for clean energy '
                    'and climate justice, but also promotes economic justice and '
                    'defends human rights.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: 'https://www.foei.org/',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class EighthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://www.greenpeace.org/international/';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Greenpeace International'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: 'Greenpeace International aims to promote peace and solve '
                    'environmental problems.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: 'https://www.greenpeace.org/international/',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class NinthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://www.edf.org/';
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about the Environmental Defense Fund'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Center(
        child: new RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: 'The Environmental Defense Fund is a nonprofit organization '
                    'that aims to preserve the environment.\n'
                    'Link: ',
                style: new TextStyle(color: Colors.black,fontSize:20),

              ),
              new TextSpan(
                text: 'https://www.edf.org/',
                style: new TextStyle(color: Colors.blue,fontSize:20),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { Future launchURL(url) async {
                    if( await canLaunch(url)) {
                      await launch(url);
                    }
                  }
                  },
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class TenthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Tenth...'),
        backgroundColor: Colors.blueAccent,
      ),

    );
  }
}

class EleventhPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Eleventh...'),
        backgroundColor: Colors.blueAccent,
      ),

    );
  }
}

class TwelfthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Twelfth...'),
        backgroundColor: Colors.blueAccent,
      ),

    );
  }
}

_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
