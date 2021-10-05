import 'package:flutter/material.dart';

class RequestCardScreen extends StatelessWidget {
  const RequestCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text('Request Card'),
            ),
          ],
        ),
      ),
    );
  }
}
