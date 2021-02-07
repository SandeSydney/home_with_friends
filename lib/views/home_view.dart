import 'package:flutter/material.dart';
import 'appbar_details.dart';
import 'bottom_appbar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const kFriendsTextStyle = TextStyle(
    fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black);

//List of tiles with sizes
List<StaggeredTile> _cardTile = const <StaggeredTile>[
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

//List of Images to be used in Staggered GridView
List<Widget> _imageTile = <Widget>[
  BackGroundTile(image: 'apples'),
  BackGroundTile(image: 'bird'),
  BackGroundTile(image: 'blue_flowers'),
  BackGroundTile(image: 'candle'),
  BackGroundTile(image: 'cat'),
  BackGroundTile(image: 'cookies'),
  BackGroundTile(image: 'dancer'),
  BackGroundTile(image: 'deer'),
  BackGroundTile(image: 'driving'),
  BackGroundTile(image: 'drum'),
  BackGroundTile(image: 'father_son'),
  BackGroundTile(image: 'fish_dish'),
  BackGroundTile(image: 'fly'),
  BackGroundTile(image: 'fruit'),
  BackGroundTile(image: 'knot'),
  BackGroundTile(image: 'man_think'),
  BackGroundTile(image: 'parrot'),
  BackGroundTile(image: 'pears'),
  BackGroundTile(image: 'poor_man'),
  BackGroundTile(image: 'puppy'),
];

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150.0,
        title: AppBarDetails(),
        flexibleSpace: Image(
          image: AssetImage('assets/images/bgImage.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        child: Container(
          padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Friends',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Community',
                      style: TextStyle(color: Colors.grey, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/resting.jpg', height: 100),
                        Text('Sharon', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/sundown.jpg', height: 100),
                        Text('Dave', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/woman_fist.jpg',
                            height: 100),
                        Text('Grace', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/women.jpg', height: 100),
                        Text('Kelvin', style: kFriendsTextStyle)
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/fly.jpg', height: 100),
                        Text('Dalvin', style: kFriendsTextStyle)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text('Discover',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              Expanded(
                flex: 2,
                child: StaggeredGridView.count(
                  crossAxisCount: 4,
                  staggeredTiles: _cardTile,
                  children: _imageTile,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.black,
        notchedShape: CircularNotchedRectangle(),
        items: [
          FABBottomAppBarItem(
            iconData: Icons.home_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.folder_open_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.add_circle_outline_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.notifications_outlined,
            text: '',
          ),
          FABBottomAppBarItem(
            iconData: Icons.picture_in_picture_outlined,
            text: '',
          ),
        ],
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final String image;

  BackGroundTile({this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset('assets/images/$image.jpg'),
    );
  }
}
