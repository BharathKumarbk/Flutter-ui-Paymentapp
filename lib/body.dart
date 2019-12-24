import 'package:flutter/material.dart';

Widget bodyGrid(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        color: Colors.yellow[300],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "$title",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black
                  ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  color: Colors.deepPurple,
                  height: 100.0,
                  width: 100.0,
                  child: Icon(icon,color: Colors.white,size: 50.0,),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget payment(String text,IconData icon) {
  return Expanded(
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60.0),
              child: Container(
                width: 100.0,
                height: 80.0,
                color: Colors.yellow[200],
                child: Icon(icon),
              ),
            ),
          ),
        ),
        Text(
          "$text",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        )
      ],
    ),
  );
}
