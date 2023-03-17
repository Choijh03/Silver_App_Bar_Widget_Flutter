import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //sliver app bar can be streched out or hide while scrolling down
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: CustomScrollView(
        slivers: [
          //sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepOrange,
            leading: Icon(Icons.menu),

            //this allows to expanded in vetical way
            expandedHeight: 200,
            //this allows to app bar to pop up when scrolling up anytime
            floating: false,
            //this allows to pin the app bar to be always there
            pinned: false,
            //it will be pink when fully streched out
            //it will be deep orange while scrolling down
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              //this makes title to be at the bottom
              title: Text('S L I V E R'),
            ),
          ),

          //sliver items
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
