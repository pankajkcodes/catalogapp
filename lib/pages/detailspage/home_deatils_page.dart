
import 'package:catalogapp/models/catlogmodel.dart';
import 'package:flutter/material.dart';

class HomeDetailsPage extends StatelessWidget {
  final CatlogItem catlogItem;

  const HomeDetailsPage({Key? key, required this.catlogItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catlogItem.name),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData( color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(
                catlogItem.imgUrl,
                width: 250,
                height: 250,
              ),
              Text(catlogItem.name),
              Text(catlogItem.desc),
            
              
            ],
          ),
        ),
      ),
    );
  }
}
