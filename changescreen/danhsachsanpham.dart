import 'package:flutter/material.dart';
import 'package:project_flutter/chitietsanpham.dart';
import 'package:project_flutter/DulieuSanpham.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> fruitname =['BMW S1000RR','Kawasaki Ninja H2R','Ducati Panigale V4','Yamaha YZF R6','CBR 650r'];

  static List url = ['https://mcn-images.bauersecure.com/wp-images/4705/1440x960/2023_bmw_s1000rr_01.jpg?mode=max&quality=90&scale=down',
    'https://vcdn1-vnexpress.vnecdn.net/2014/11/14/2015-kawasaki-ninja-h2r-galler-2027-7347-1415952672.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=uMckboxHy3sfWLTb_CkmfA',
    'https://cdn.24h.com.vn/upload/2-2021/images/2021-06-09/2021-Ducati-Panigale-V4-cap-nhat-nhieu-trang-bi-khung-gia-hon-731-trieu-dong-du1-1623196650-513-width660height371.jpg',
    'https://imgwebikenet-8743.kxcdn.com/moto_img/cg/8/7859/L_11bcd16b3cf0e22121d61f094a.jpg',
    'https://images.autofun.vn/file/91b24b50f6114beb8fa113039da7d183.jpeg'];

  final List<DulieuSanpham> Fruitdata = List.generate(
      fruitname.length,
          (index)
      => DulieuSanpham('${fruitname[index]}', '${url[index]}','Một số thông tin về ${fruitname[index]} '));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Chuyen man hinh'),),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FruitDetail(fruitDataModel: Fruitdata[index],)));
                  },
                ),
              );
            }
        )
    );
  }
}