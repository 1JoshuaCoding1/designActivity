import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Master Class"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      
      body: Container(
       
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ClipRRect(
                     borderRadius: BorderRadius.circular(50),
                    child: Container(
                      
                      height: 100,
                      width: 300,
                      margin: const EdgeInsets.all(10),
                      color: Colors.green[700],
                      child: Center(
                        child: Text(
                          "Card $index",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 10,
                   physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ClipRRect(
                     borderRadius: BorderRadius.circular(50),
                    child: Container(
                      
                      height: 100,
                      width: 300,
                      margin: const EdgeInsets.all(10),
                      color: Colors.green[700],
                      child: Center(
                        child: Text(
                          "Card $index",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}