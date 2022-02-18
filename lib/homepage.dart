import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'modal.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) =>
                        sectionCard(item: items[index]))),
                      
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int) {
                return Card(
                  child: ListTile(
                      title: Text('Motivation $int'),
                      subtitle:
                          Text('this is a description of the motivation')),
                );
              },
            ),
          ),
        
      
        
      ])));
      
  }

  Widget sectionCard({required CardItem item}) =>
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        (const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
        )),
        Container(
          height: 350,
          width: 420,
          margin: const EdgeInsets.only(top: 80, left: 30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 200,
              //width: 80,
              child: Image(
                image: AssetImage(item.urlImage),
                fit: BoxFit.fitHeight,
              ),
            ),

            // ignore: prefer_const_constructors
            VerticalDivider(
              color: Colors.blue,
              thickness: 5,
              width: 30,
              endIndent: 10,
              indent: 10,
            ),

            
             Column(
                children: [
                  const SizedBox(height: 125),
                  Text(
                    item.title,
                    style: const TextStyle(fontSize: 40),
                  ),
                  Text(
                    item.subtitle,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            
          ]),
        ),
      ]);
}

// Row(
//       children: [
//         Container( height:100,
//         width: 100,
//          decoration: BoxDecoration(
    
//     border: Border.all(
//       color: Colors.blue,
//       width: 1,
//     ),
//     borderRadius: BorderRadius.circular(12),
//   ),
//         ),
      
        
//        Column(
//          children: [
//            Container(
                
//                 decoration: const BoxDecoration(
//     image: DecorationImage(
//       image: AssetImage('images/image1.jpeg'),
//       fit: BoxFit.none,
//     ),
//     ),
                  
//                 ),
//          ],
//        ),
//         ),
//       ]);
            
    
    
//   }
// }
  
    
    


    // return Scaffold(
// 	   body:GridView.count(
// 		crossAxisCount: 2,
//   children: <Widget>[
	
// 	Container(
// 	  padding: const EdgeInsets.all(8),
// 	  child: const Text('Graduation')
// 	),
// 	Container(
// 	  padding: const EdgeInsets.all(8),
// 	  child: Image.asset('images/image1.jpeg'),
// 	),
//   ],
// )
// 	);
       
          

  
