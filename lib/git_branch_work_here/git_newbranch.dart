import 'package:flutter/material.dart';

class NewBranch extends StatelessWidget {
  const NewBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Branch"),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(child: Text(('New Branch here ')))],
      ),
    );
  }
}
