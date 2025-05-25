import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExerciseOne(),
    );
  }
}

class ExerciseOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 1'), // title: Text
        leading: Icon(Icons.menu), // leading: Icon
        actions: [ // actions: IconButton
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 251, 182, 210),
      ),
      body: Column(
        children: [
          /// Container with horizontal ListView
          Container(
            height: 120,
            color: const Color.fromARGB(255, 255, 194, 235),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: const Color.fromARGB(250, 3, 3, 3).withOpacity(0.5),
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/100/100?random=$index'),                 
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'Item ${index + 1}',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                          shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.black,
                                ),
                                  ],),
                    ),
                  ),
                );
              },
            ),
          ),

          /// Expanded with vertical ListView
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 255, 214, 241),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: const Color.fromARGB(250, 3, 3, 3).withOpacity(0.5),
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          'https://picsum.photos/400/200?random=$index',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Title ${index + 1}',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
