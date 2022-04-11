import 'package:flutter/material.dart';

class HambergerList extends StatefulWidget {
  HambergerList({Key? key}) : super(key: key);

  @override
  _HambergerListState createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (contex, index) {
              return Stack(
                children: [
                  Container(
                    height: 250,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: items == index ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        // TODO navigation
                      },
                      child: Card(
                        child: Text("Burger"),
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
