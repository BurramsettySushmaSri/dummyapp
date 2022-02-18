import 'package:flutter/material.dart';
import 'modal.dart';


void main() => runApp(const MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Sample'))),
        // backgroundColor: Colors.yellow,
        body: const MyCardWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (MediaQuery.of(context).size.width < 600)
            ? (Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Headline',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          topSection(item: items[index]),
                    ),
                  ),
                  SizedBox(height: 0,),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) =>
                          classsection(context),
                    ),
                  ),
                  
                ],
              ))
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          topSection(item:items[index]),
                    ),
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          classsection(context),
                    ),
                  ),
                ],
              ));
  }

  Widget classsection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        (const Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        )),
        Container(
          height: 150,
          width:400,
          // width: cardwidth(context),
          margin: const EdgeInsets.only(top: 30,left:20,right:30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purpleAccent),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            children: [
              Container(
                height: 150,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(5),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
  Widget topSection({required CardItem item}) =>
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        (const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 40),
        )),
        Container(
          height: 150,
          width: 200,
          margin: const EdgeInsets.only(top:10 ,left: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              
              width: 80,
              child: Image(
                image: AssetImage(item.urlImage),
                fit: BoxFit.fitWidth,
              ),
            ),

            // ignore: prefer_const_constructors
            VerticalDivider(
              color: Colors.blue,
              thickness: 3,
              width: 30,
              endIndent: 10,
              indent: 10,
            ),

            
             Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    item.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    item.subtitle,
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
            
          ]),
        ),
      ]);
}

  // Widget topsection(BuildContext context) {
  //   return Center(
  //       child: Container(
  //     width: 300,
  //     height: 200,
  //     padding: const EdgeInsets.all(10.0),
  //     child: Card(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15.0),
  //       ),
  //       color: Colors.red,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: const <Widget>[
  //           ListTile(
  //             leading: Icon(Icons.album, size: 40),
  //             title: Text('top section', style: TextStyle(fontSize: 20.0)),
  //             subtitle: Text('', style: TextStyle(fontSize: 10.0)),
  //           ),
  //         ],
  //       ),
  //     ),
  //   ));
  // }

  // cardwidth(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   if (width < 650) {
  //     width = width;
  //     return width;
  //   } else {
  //     return 400;
  //   }
  // } 
