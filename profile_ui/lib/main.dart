import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List tags = ['travel', 'urban', 'fashion', 'lifestyle', 'editing'];
  final List categories = [
    'Featred',
    'Neon City',
    'Street Art',
    'Fashion',
    'Studio'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09031D),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        backgroundColor: Color(0xff09031D),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          // name section
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 7),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Katrina Kaif',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 17,
                            ),
                            Text(
                              'Dhaka, Bangladesh',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // following section
          Padding(
            padding: const EdgeInsets.only(
                left: 38.0, right: 38, top: 15, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '19K',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'followers',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.5,
                  height: 22,
                ),
                Column(
                  children: [
                    Text(
                      '967',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'following',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.5,
                  height: 22,
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 18, left: 18, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(33),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff6D0EB5),
                        Color(0xff4059F1),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          // tags section
          Container(
            height: 44,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        border: Border.all(color: Colors.white12)),
                    margin: EdgeInsets.only(right: 13),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 13, bottom: 5, right: 20, left: 20),
                      child: Text(
                        tags[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
          ),
          //gallery section
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(34),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 33.0, right: 25, left: 25),
                    child: Text(
                      'Portfolio',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 17.0, top: 3),
                            child: index == 1
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        categories[index],
                                        style: TextStyle(
                                            color: Color(0xff434AE8),
                                            fontSize: 19),
                                      ),
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: Color(0xff434AE8),
                                      )
                                    ],
                                  )
                                : Text(
                                    categories[index],
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(0.9),
                                        fontSize: 19),
                                  ),
                          );
                        }),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.only(right: 25, left: 25),
                            height: 200,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemBuilder: (BuildContext context, index) =>
                                  Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  child:
                                      Image.asset('images/img${index + 1}.jpg'),
                                ),
                              ),
                              staggeredTileBuilder: (int index) =>
                                  StaggeredTile.count(2, index.isEven ? 3 : 1),
                              mainAxisSpacing: 9,
                              crossAxisSpacing: 8,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 12, left: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(33),
                            ),
                          ),
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.home,
                                color: Color(0xff434BE6),
                              ),
                              Icon(
                                Icons.notifications_active,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 33,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 23,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(55),
                                gradient: LinearGradient(colors: [
                                  Color(0xff6615C1),
                                  Color(0xff484FDE),
                                ])),
                            height: 66,
                            width: 66,
                            child: Icon(
                              Icons.add,
                              size: 27,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
