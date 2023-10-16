import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.8),
      body: Container(
        padding: EdgeInsets.all(10),
        height: h,
        width: w,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * .08,
                width: w,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefix: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search music and video",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Music By Genre",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.redAccent,
                          Colors.deepOrangeAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Bollywood",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey,
                          Colors.grey,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Tollywood",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.pinkAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Kollywood",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orangeAccent,
                          Colors.deepOrangeAccent,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sandalwood",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink,
                          Colors.deepPurpleAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Mollywood",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Indian Pop",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Moods & Activities",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey,
                          Colors.grey,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Moods",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.grey,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Activities",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black45,
                          Colors.grey,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Love",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Workout",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.redAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Party",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange,
                          Colors.lightGreenAccent,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Travel",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Videos By Category",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.greenAccent,
                          Colors.blueAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Top Videos",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.greenAccent,
                          Colors.blueAccent,
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Arts",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black45,
                          Colors.grey,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Love",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Workout",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey,
                          Colors.grey,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Education",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.orangeAccent,
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Health",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
