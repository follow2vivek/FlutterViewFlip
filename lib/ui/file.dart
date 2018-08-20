import 'package:flutter/material.dart';

class File extends StatelessWidget {
  String dkUrl =
      "https://media.licdn.com/dms/image/C5103AQGlovQBuS4iKA/profile-displayphoto-shrink_200_200/0?e=1537401600&v=beta&t=7K2yad0JIEiRhMqCRbplOhzQK0bw1hqlimuQLwLmsAM";
  String apUrl = "https://avatars2.githubusercontent.com/u/5534636?v=4";
  var pageData = [
    {
      "name": "Android",
      "color1": Colors.teal[100],
      "color2": Colors.teal[300],
      "margin": 20.0
    },
    {
      "name": "Flutter",
      "color1": Colors.yellow[100],
      "color2": Colors.yellow[300],
      "margin": 20.0
    },
    {
      "name": "React Native",
      "color1": Colors.red[100],
      "color2": Colors.red[300],
      "margin": 20.0
    },
    {
      "name": "Ionic",
      "color1": Colors.green[100],
      "color2": Colors.green[300],
      "margin": 0.0
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: <Widget>[
          _heading("Profile"),
          _headerView(apUrl,"Ashish Patil"),
          _heading("Platform"),
          _pagerView(),
          _heading("Profile"),
          _headerView(dkUrl,"Dharmik Kamdar")
        ],
      ),
    );
  }

  Widget _heading(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w700),
          ),
          Container(
            height: 4.0,
            width: 80.0,
            decoration: BoxDecoration(color: Colors.orange),
          )
        ],
      ),
    );
  }

  Widget _headerView(String url,String name) {
    return Container(
        height: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: LinearGradient(
                colors: [Colors.blue[100], Colors.blue[400]],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter)),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(url), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50.0)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ));
  }

  Widget _pagerView() {
    return Container(
        height: 150.0,
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _pagerViewData(index);
          },
          itemCount: pageData.length,
          scrollDirection: Axis.horizontal,
        ));
  }

  Widget _pagerViewData(int index) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(right: pageData[index]['margin']),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [pageData[index]['color1'], pageData[index]['color2']]),
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
            child: Text(
              "${pageData[index]['name']}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 0.0),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
              size: 30.0,
            ),
          )
        ],
      ),
    );
  }
}
