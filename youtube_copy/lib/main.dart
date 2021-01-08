import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            "アルパカの唾吐き",
          ),
          actions: [
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //todo
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network(
                          "https://s3-ap-northeast-1.amazonaws.com/repos.kids.rurubu.jp/uploads/2019/12/13141305/16437_000_nasudobutu.jpg"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        const Text(
                          "アルパカの唾吐きチャンネル",
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text("登録する"),
                            ],
                          ),
                          onPressed: () {
                            //todo
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          "https://s3-ap-northeast-1.amazonaws.com/repos.kids.rurubu.jp/uploads/2019/12/13141305/16437_000_nasudobutu.jpg"
                      ),
                      title: Column(
                        children: [
                          Text(
                            '唾しか吐けません',
                             style: TextStyle(
                               fontWeight: FontWeight.bold
                             ),
                             textAlign: TextAlign.left,),
                          Row(
                            children: [
                              Text('1万再生'),
                              Text('2日前'),

                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),

                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
