import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return PortraitLayout();
          } else {
            return LandscapeLayout();
          }
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: AspectRatio(
            aspectRatio: 1.3,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1546805022-9c4e4ab7e3a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZHNsciUyMGNhbWVyYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Center(
          child: Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer turpis elit, tempus nec dui quis, ultricies mollis risus. Vestibulum placerat nibh id justo condimentum, vitae ultricies ligula sagittis.',
            textAlign: TextAlign.start,
          ),
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Display 3 images per row
          ),
          itemCount: 15,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://images.unsplash.com/photo-1598469701566-59655353deb4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHNsciUyMGNhbWVyYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
            );
          },
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.3,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1546805022-9c4e4ab7e3a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZHNsciUyMGNhbWVyYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer turpis elit, tempus nec dui quis, ultricies mollis risus. Vestibulum placerat nibh id justo condimentum, vitae ultricies ligula sagittis.',
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6, // Adjust this value for landscape orientation
            ),
            itemCount: 15,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://images.unsplash.com/photo-1598469701566-59655353deb4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHNsciUyMGNhbWVyYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
              );
            },
          ),
        ],
      ),
    );
  }
}
