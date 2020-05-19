import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopCard(),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Rated Destinations",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PlacesCard(
                        desc:  "The Maldives are known for their natural environment including the blue ocean, white beaches, and clean air.",
                        assetname: "images/2.jpg",
                        place: "Maldives",
                      ),
                      PlacesCard(
                        desc: "Australia is world famous for its natural wonders and wide open spaces, its beaches, deserts, the bush and the Outback",
                        assetname: "images/4.jpg",
                        place: "Australia",
                      ),
                      PlacesCard(
                        desc: "Italy is famous for its huge contributions to the worlds of art, architecture, fashion, opera, literature, design, and film – the list goes on",
                        assetname: "images/5.jpg",
                        place: "Italy",
                      ),
                      PlacesCard(
                        desc: "The state of Goa, in India, is famous for its Beautiful beaches,nightlife party, Safety & Hospitality, carnival , Water sports.",
                        assetname: "images/7.jpg",
                        place: "Goa",
                      ),
                      PlacesCard(
                        desc: "A popular tourist destination, San Francisco is known for its cool summers, fog, steep rolling hills, eclectic mix of architecture, and landmarks,",
                        assetname: "images/8.jpg",
                        place: "San Fransico",
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Events",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PlacesCard(
                        desc: "",
                        assetname: "images/10.jpg",
                        place: "Concerts",
                      ),
                      PlacesCard(
                        desc: "",
                        assetname: "images/11.jpg",
                        place: "Marathons",
                      ),
                      PlacesCard(
                        desc: "",
                        assetname: "images/12.jpg",
                        place: "Live",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class PlacesCard extends StatefulWidget {
  final String assetname;
  final String place;
  final String desc;
  const PlacesCard({
    Key key,
    this.assetname,
    this.place, this.desc,
  }) : super(key: key);

  @override
  _PlacesCardState createState() => _PlacesCardState();
}

class _PlacesCardState extends State<PlacesCard> {
  double h = 180;

  double w = 160;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          h = h == 180 ? 200 : 180;
          w = w == 160 ? 180 : 160;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: EdgeInsets.only(right: 14),
        height: h,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(widget.assetname), fit: BoxFit.cover),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2)
              ])),
          child: Column(
            mainAxisAlignment:
                w == 160 ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 5),
                child: Text(
                  widget.place,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              w == 160
                  ? Text("")
                  : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                       widget.desc,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500
                        ),),
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          image: DecorationImage(
              image: AssetImage("images/bg1.jpg"), fit: BoxFit.fitWidth)),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Text(
              "Where would you like to Travel?",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white.withOpacity(0.85)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 25, left: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
