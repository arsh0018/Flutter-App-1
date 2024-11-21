import 'package:flutter/material.dart';

final List<String> assetImages = [
  'assets/images/image1.webp',
  'assets/images/image2.webp',
  'assets/images/image3.jpeg'
];

final List<String> networkImages = [
  'https://picsum.photos/700/427',
  'https://picsum.photos/700/500',
  'https://picsum.photos/700/700'
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        fontFamily: 'OpenSans',
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Images and Assets',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.pink[200],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: networkImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.network(networkImages[index]),
                    );
                  },
                ),
              ),
              const SizedBox(height: 12),
              const ListTile(
                tileColor: Colors.pinkAccent,
                leading: Icon(Icons.home),
                title: Text(
                  'Light OpenSans',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const ListTile(
                tileColor: Colors.pinkAccent,
                leading: CircleAvatar(child: Icon(Icons.search)),
                title: Text(
                  'Regular OpenSans',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const ListTile(
                tileColor: Colors.pinkAccent,
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text(
                  'Bold OpenSans',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const ListTile(
                tileColor: Colors.pinkAccent,
                leading: Icon(Icons.filter_alt_rounded),
                title: Text(
                  'Light OpenSans',
                  style: TextStyle(
                    fontFamily: 'openSans',
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: assetImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(assetImages[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
