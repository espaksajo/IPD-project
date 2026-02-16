import 'package:flutter/material.dart';
class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

@override
Widget build(BuildContext context) {
return DefaultTabController(
length: 3,
child: Scaffold(
appBar: AppBar(
title: Text('Feedback'),
bottom: const TabBar(
tabs: [
Tab(text: 'Daily'),
Tab(text: 'Weekly'),
Tab(text: 'Monthly'),
],
),
),
body: const TabBarView(
children: [
Center(child: Text('Daily Improvements')),
Center(child: Text('Weekly Improvements')),
Center(child: Text('Monthly Improvements')),
],
),
),
);
}
}