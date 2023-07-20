import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreen createState()=> _MyHomeScreen();

}
class _MyHomeScreen extends State<MyHomeScreen> {
  bool hideimage = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chu'),
      ),
      body: SafeArea(
        child: Container(
          //alignment: Alignment.topCenter,
          //width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pham Hoang Anh _ 0850080003 _ 08CNPM',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRowLayout(),

                SizedBox(
                  height: 20,
                ),

                if (hideimage)
                  Image.network(
                    'https://s3.ap-southeast-1.amazonaws.com/techover.storage/wp-content/uploads/2022/03/31225751/dart-logo-for-shares-2.png',
                    width: 250,
                  ),

                Image.network(
                  'https://blog.vietnamlab.vn/content/images/1TNFw_7wEA1yZ-GSEtReH76r5tDTTioGQ.png',
                  width: 250,
                ),

                Image.network(
                  'https://webdoctor.vn/wp-content/uploads/2018/02/Cach-dang-xuat-de-thay-doi-tai-khoan-google-mac-dinh-tren-android-03-768x432.jpg',
                  width: 250,
                  height: 150,
                ),

                SizedBox(
                  height: 10,
                ),


                ElevatedButton(
                    onPressed: () {


                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam, doi chut chut!')));
                      setState(() {
                        hideimage=!hideimage;
                      });
                    },
                    
                    child: Text('Bam vao day!', style: TextStyle(fontSize: 20))),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.lightBlue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orangeAccent,
        height: 100,
        width: 100,
      )
    ],
  );
}
