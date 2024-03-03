import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CourseListPage(),
    ),
  );
}

class CourseListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List'),
        backgroundColor: Colors.blue,
      ),
      body: CourseListView(),
    );
  }
}

class CourseListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        CourseCard(
          courseTitle: 'Computer Networks',
          instructor: 'Nilesh Ghavate',
          duration: '4 weeks',
        ),
        CourseCard(
          courseTitle: 'Operating System',
          instructor: 'Tayyabali Sayyad',
          duration: '6 weeks',
        ),
        CourseCard(
          courseTitle: 'Advance Data Structure & Algorithms',
          instructor: 'Prasad Padalkar',
          duration: '5 weeks',
        ),
        // Add more CourseCard widgets as needed
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final String courseTitle;
  final String instructor;
  final String duration;

  CourseCard({
    required this.courseTitle,
    required this.instructor,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          courseTitle,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            Text('Instructor: $instructor'),
            SizedBox(height: 4.0),
            Text('Duration: $duration'),
          ],
        ),
        onTap: () {
          // Placeholder: Navigate to the course details page or perform any other action
          _showSnackBar(context, '$courseTitle');
        },
      ),
    );
  }

  // Placeholder method to show a SnackBar
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
