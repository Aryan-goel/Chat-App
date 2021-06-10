import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: appBarMain(context)),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search username ...",
                              hintStyle: TextStyle(color: Colors.white54),
                              border: InputBorder.none))),
                  Image.asset("assets/images/search_white.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
