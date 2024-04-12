import 'package:anylinkpreview/preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _title = new TextEditingController();
  TextEditingController _link = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TestingURL',
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Save'),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Add URL'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _title,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _link,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Link',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Preview_Screen(title: _title.text, link: _link.text),
                  ));
                },
                child: Text('Submit'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
