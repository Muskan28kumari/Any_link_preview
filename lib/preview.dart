import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';

class Preview_Screen extends StatelessWidget {
  final String link;
  final String title;

  Preview_Screen({Key? key, required this.link, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        title: Text(
          'Link Preview',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            AnyLinkPreview(
              link: link,
              cache: Duration(hours: 1),
              backgroundColor: Colors.grey[300],
              errorWidget: Container(
                color: Colors.grey[300],
                child: Text(
                    'This link cannot be accessed due to privacy concern or Invalid Link: $link : Please Enter Correct Link'),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
