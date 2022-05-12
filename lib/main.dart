import 'package:flutter/material.dart';
import 'package:flutter_testing/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);





  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<String> titleList = ['Amazon', '楽天', 'Yahoo'];

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("パスワード管理"),
      ),
      /*body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.security),
            title: Text(titleList[0]),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.security),
            title: Text(titleList[1]),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.security),
            title: Text(titleList[2]),

          ),
          Divider(),*/

      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.security),
                title: Text(titleList[index]),
              ),
              Divider(),
              ListTile(
              title: Text(titleList[index]),
              leading: Icon(Icons.vpn_key),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NextPage(titleList[index])));
              }
              ),
            ],
          );


        },
        itemCount: titleList.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.add('Google');

          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



