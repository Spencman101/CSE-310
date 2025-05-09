import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 183, 116, 58)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> isPressedList = [false, false];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.blue[400],
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 108,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/blueberry-scones.jpg'),
                            radius: 100,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Baking Class',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.amber,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Learn to make Blueberry Scones and Lemon Curd. Wed, Apr 30, 2025, 7:00 PM. Broulim\'s Fresh Foods 124 W Main St, Rexburg, ID 83440',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(
                          width: 125,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isPressedList[0] ? Colors.black : Colors.white),
                            onPressed: () {
                              setState(() {
                              isPressedList[0] = !isPressedList[0];
                              });
                            },
                            child: Text('Interested'),
                          ),
                          // child: ElevatedButton(
                          //   onPressed: () {
                          //     Text("Visit button tapped");
                          //   }, 
                          //   style: ButtonStyle(
                          //     backgroundColor: MaterialStateProperty.all(Colors.green)
                          //     ),
                          //     child: Padding(
                          //       padding:
                          //       EdgeInsets.all(4),
                          //       child: Row(
                          //         children: [
                          //           Icon(Icons.touch_app),
                          //           Text('Visit')
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                        ),
                      ],
                    )
                  ),
                )
              ),
              // Wrap(
              //   children: <Widget>[
              //     Image.asset('assets/blueberry-scones.jpg', width: 200.0, height: 200.0, fit: BoxFit.cover,),
              //     const Text('Learn to make Blueberry Scones and Lemon Curd'),
              //     const Text('Wed, Apr 30, 2025, 7:00 PM'),
              //     const Text('Broulim\'s Fresh Foods 124 W Main St, Rexburg, ID 83440'),
              //     // ToggleButtons(
              //     //   isSelected:selections, 
              //     //   onPressed:(int index) {
              //     //       setState(() {
              //     //         selections[index] = !selections[index];  
              //     //       });
              //     //   },
              //     //   color:Colors.grey, 
              //     //   selectedColor: Colors.white,
              //     //   fillColor:Colors.deepPurple, 
              //     //   children: const <Widget>[
              //     //     Text('Interested') 
              //     //   ],
              //     // ),
              //     ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //               backgroundColor: isPressedList[0] ? Colors.black : Colors.blue),
              //             onPressed: () {
              //               setState(() {
              //               isPressedList[0] = !isPressedList[0];
              //               });
              //             },
              //             child: Text('Interested'),
              //           ),
              //   ],
              // ),
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.amber[800],
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 108,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/carnival.jpg'),
                            radius: 100,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Witchlight Carnival',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Play some games and have some magical fun! Fri, Nov 13, 2025, 8:00 PM Idaho\'s Fairgrounds 666 S Fire Ln, Idaho Falls, ID 83450',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red[900],
                          ),
                        ),
                        SizedBox(
                          width: 125,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isPressedList[1] ? Colors.black : Colors.amber),
                            onPressed: () {
                              setState(() {
                              isPressedList[1] = !isPressedList[1];
                              });
                            },
                            child: Text('Interested'),
                          ),
                        ),
                      ],
                    )
                  ),
                )
              ),
              // Container(
              //   padding: const EdgeInsets.all(8.0),
              //   width: double.infinity, // Fills horizontal space
              //   child: RichText(
              //     textAlign: TextAlign.start,
              //     overflow: TextOverflow.clip,
              //     text: TextSpan(
              //       children: [
              //         WidgetSpan(
              //           alignment: PlaceholderAlignment.top,
              //           child: Image.asset(
              //             'assets/carnival.jpg', 
              //             width: 200.0, 
              //             height: 200.0, 
              //             fit: BoxFit.contain,
              //           ),
              //         ),
              //         TextSpan(
              //           text:
              //           'Play some games and have some magical fun! Fri, Nov 13, 2025, 8:00 PM Idaho\'s Fairgrounds 666 S Fire Ln, Idaho Falls, ID 83450',                  
              //           style: Theme.of(context).textTheme.bodyLarge,
              //         ),
              //         WidgetSpan(
              //           child: 
              //           ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //               backgroundColor: isPressedList[1] ? Colors.black : Colors.blue),
              //             onPressed: () {
              //               setState(() {
              //               isPressedList[1] = !isPressedList[1];
              //               });
              //             },
              //             child: Text('Interested'),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ]
          ),
        )
      )
    );
  }
}
