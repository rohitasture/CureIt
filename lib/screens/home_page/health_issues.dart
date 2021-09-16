import 'package:flutter/material.dart';

class HealthIssues extends StatefulWidget {
  @override
  HealthIssuesState createState() => HealthIssuesState();
}

class HealthIssuesState extends State<HealthIssues> {
  final _HealthIssues = <HealthIssue>[];
  final _bookmarkedissues = Set<HealthIssue>();

  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item) {
        if (item.isOdd) return Divider();

        final index = item ~/ 2;

        if (index >= _HealthIssues.length) {
          _HealthIssues.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_HealthIssues[index]);
      },
    );
  }

  Widget _buildRow(HealthIssue pair) {
    final alreadySaved = _bookmarkedissues.contains(pair);

    return ListTile(
        title: Text(pair.asPascalCase, style: TextStyle(fontSize: 18.0)),
        trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null),
        onTap: () {
          setState(() {
            if (alreadySaved) {
              _bookmarkedissues.remove(pair);
            } else {
              _bookmarkedissues.add(pair);
            }
          });
        });
  }

  void _pushSaved() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      final Iterable<ListTile> tiles =
          _bookmarkedissues.map((HealthIssue pair) {
        return ListTile(
            title: Text(pair.asPascalCase, style: TextStyle(fontSize: 16.0)));
      });

      final List<Widget> divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();

      return Scaffold(
          appBar: AppBar(title: Text('Bookmarked Health Issues')),
          body: ListView(children: divided));
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WordPair Generator'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)
          ],
        ),
        body: _buildList());
  }
}
