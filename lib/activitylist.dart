import 'package:allinoneflutter/tableactivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imageactivity.dart';


class Activitylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
                  title:const Text("Table") ,
                  onTap:() => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Tableactivity();
                        },
                      ),
                    )
                  },
                )
            ),
            Card(
              child: ListTile(
                title: const Text("Fixed Table"),
                onTap: ()=>{

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Tableactivity();
                      },
                    ),
                  )
                },
              ),
            ),
            Card(
                child: ListTile(
                  title: const Text("Image from assets"),
                  onTap: ()=>{
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Imageactivity();
                        },
                      ),
                    )
                  },

                )
            ),
          ],
          shrinkWrap: true,
        )
    );
  }
}