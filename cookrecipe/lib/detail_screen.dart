import 'package:cookrecipe/resep.dart';
import 'package:flutter/material.dart';
import 'package:cookrecipe/rating.dart';

class DetailScreen extends StatefulWidget {
  final resep recepi;

  const DetailScreen({Key? key, required this.recepi}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recepi.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.recepi.image,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.recepi.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueAccent),
          ),
          Text('Calories : ${widget.recepi.calories}'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Description : ' + widget.recepi.tutorial,
              maxLines: 15,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                color: Colors.brown,
              ),
            ),
          ),
          Rating((rating) {
            setState(() {
              _rating = rating;
            });
          }, 5),
          SizedBox(
              height: 44,
              child: (_rating != 0 && _rating != 0)
                  ? Text("You selected $_rating rating",
                      style: TextStyle(fontSize: 18))
                  : SizedBox.shrink())
        ],
      ),
    );
  }
}
