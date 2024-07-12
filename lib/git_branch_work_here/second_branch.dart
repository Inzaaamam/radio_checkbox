import 'package:flutter/material.dart';

class SecondBranch extends StatelessWidget {
  const SecondBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Branch')),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('This is the second branch')),
        ],
      ),
    );
  }
}
