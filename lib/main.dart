import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage:
              NetworkImage('https://picsum.photos/id/290/300/300'),
              backgroundColor: Colors.transparent,
            ),
          ),
          title: Text("Feed",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          actions: [
            Icon(
              CupertinoIcons.add,
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Icon(
                CupertinoIcons.mail,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Body(),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.fastLinearToSlowEaseIn,
          backgroundColor: Colors.transparent,
          color: Color(0xff2b2b2b),
          buttonBackgroundColor: Color(0xff2b2b2b),
          items: [
            Icon(Icons.home_outlined, size: 30, color: Colors.white),
            Icon(Icons.search, size: 30, color: Colors.white),
            Icon(CupertinoIcons.smallcircle_circle,
                size: 30, color: Colors.white),
            Icon(CupertinoIcons.check_mark_circled,
                size: 30, color: Colors.white),
            Icon(Icons.account_circle_outlined, size: 30, color: Colors.white),
          ],
          height: 55,
          index: 1,
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int tagIndex = 0;

  List items = ["#Trending", "#Food", "#Activity", "#Technology", "#World"];

  final List<String> images = [
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://www.boostmobile.com/content/dam/boostmobile/en/products/phones/apple/iphone-7/silver/device-front.png.transform/pdpCarousel/image.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUgs8_kmuhScsx-J01d8fA1mhlCR5-1jyvMYxqCB8h3LCqcgl9Q",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://www.boostmobile.com/content/dam/boostmobile/en/products/phones/apple/iphone-7/silver/device-front.png.transform/pdpCarousel/image.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUgs8_kmuhScsx-J01d8fA1mhlCR5-1jyvMYxqCB8h3LCqcgl9Q",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
  ];

  final List<String> names = [
    "Prince Singh",
    "Arnab",
    "Shivam",
    "Vasu Goel",
    "Ronit",
    "Vishal",
    "Isra Wali",
    "Divya",
    "Ritik",
    "Aman",
    "Laxman Gupta",
    "Anurag",
    "Nilesh",
    "Saurav Kumar",
  ];

  final List<String> caption = [
    "Love For All, Hatred For None",
    "Change the world by being yourself",
    "Every moment is a fresh beginning",
    "Die with memories, not dreams",
    "Aspire to inspire before we expire",
    "Everything you can imagine is real",
    "Whatever you do, do it well",
    "What we think, we become",
    "All limitations are self-imposed",
    "Be so good they can’t ignore you",
    "Reality is wrong, dreams are for real",
    "Strive for greatness",
    "Happiness depends upon ourselves",
    "Turn your wounds into wisdom"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) => StatusTag(index),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) => Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 20,
              child: Column(
                children: <Widget>[
                  Image.network(images[index]),
                  Container(
                    height: 70,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "${names[index]} ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(text: '${caption[index]}'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.network(
                                "https://picsum.photos/id/${index+650}/200/300",
                                width: 35,
                                height: 35,
                                fit: BoxFit.fill,
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      ],
    );
  }

  Row StatusTag(int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              tagIndex = index;
            });
          },
          child: Container(
            width: 100,
            child: Center(
                child: Text(
              "${items[index]}",
              style: TextStyle(color: index == tagIndex ? Colors.white : Colors.black),
            )),
            decoration: BoxDecoration(
                color: index == tagIndex ? Color(0xFFFF2323) : Colors.white,
                border: Border.all(width: 1.5, color: Color(0xFFFF2323)),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
