
import 'package:catalogapp/models/catlogmodel.dart';
import 'package:catalogapp/widget/homewidget/drawer.dart';
import 'package:catalogapp/widget/itemswidget/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatelogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatelogModel.items[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
