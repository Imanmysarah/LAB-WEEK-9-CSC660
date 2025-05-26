import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExerciseOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExerciseOne extends StatelessWidget {
  // Only 5 image paths
  final List<String> imagePaths = [
    'assets/images/flower1.jpg',
    'assets/images/flower2.jpg',
    'assets/images/flower3.jpg',
    'assets/images/flower4.jpg',
    'assets/images/flower5.jpeg',
  ];
  final List<String> imagePaths2 = [
    'assets/images/gift1.jpg',
    'assets/images/gift2.jpg',
    'assets/images/gift3.jpg',
    'assets/images/gift4.jpg',
    'assets/images/gift5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pure Gift'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 252, 204, 242),
      ),
      body: Column(
        children: [
          /// Horizontal ListView (5 boxes)
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: const Color.fromARGB(255, 19, 19, 19).withOpacity(0.3),
                        offset: Offset(0, 2),
                      )],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePaths[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    color: const Color.fromARGB(0, 255, 255, 255),
                    child: Text(
                      'Bouquet ${index + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          /// Vertical ListView (5 boxes)
          Expanded(
            child: ListView.builder(
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: const Color.fromARGB(255, 19, 19, 19).withOpacity(0.3),
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          imagePaths2[index],
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Gift Set ${index + 1}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            shadows: [
                              Shadow(
                                offset: Offset(0.5, 0.5),
                                blurRadius: 1.5,
                                color: Colors.black38,
                              ),
                            ],
                          ),
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
