import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Shakhsny extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Shakhsny> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.darkThemeEnabled,
        initialData: false,
        builder: (context, snapshot) => MaterialApp(
          theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.pink.shade100,
                title: Text("EGC"),
              ),
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SpaceBetween(),
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(

                          child: Text(
                            'Emotional',
                            // i need to make it onpressed, gives shadows
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                shadows:[ Shadow(
                                  color: Colors.pink.shade50,
                                  blurRadius: 10.0,
                                ) ]),
                          ),
                          backgroundColor: Colors.grey.shade500,
                          radius: 65.0,
                        ),
                      ),
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 30.0,
                    height: 30.0,
                  ),
                  Column(
                    children: <Widget>[
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                      SpaceBetween(),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          child: Text(
                            'Emotional',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          radius: 65.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              /* Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            LeftSide(),
            RightSide()
          ],
        ),*/
              drawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    //profile pic
                    /* Card(
                child: Image.asset('u'),
              ),*/
                    ListTile(
                      title: Text('Work Shops'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('My Courses'),
                    ),
                    ListTile(
                      title: Text('Dark Theme'),
                      trailing: Switch(
                        value: snapshot.data,
                        onChanged: bloc.changeTheme,
                      ),
                    ),
                    ListTile(
                      title: Text('Rate App'),
                      trailing: Icon(Icons.thumbs_up_down),
                    ),
                    ListTile(
                      title: Text('More Apps'),
                      trailing: Icon(Icons.apps),
                    ),
                    new Divider(),
                    new ListTile(
                      title: Text('EXIT'),
                      trailing: Icon(Icons.cancel),
                    )
                  ],
                ),
              ),
              bottomNavigationBar: BottomBar()),
        ));
  }
}
/*class LeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
    IconButton(color: Colors.pink,icon: Icon(Icons.print,color: Colors.pink,),),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
      ],
    );
  }
}

class RightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
        FloatingActionButton(child: Text('ToBeMade'),backgroundColor: Colors.pink,),
      ],
    );
  }
}*/

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.build),
        ),
        IconButton(
          icon: Icon(Icons.question_answer),
        ),
        IconButton(
          icon: Icon(Icons.question_answer),
        ),
        IconButton(
          icon: Icon(Icons.question_answer),
        ),
        IconButton(
          icon: Icon(Icons.question_answer),
        )
      ],
    );
  }
}

class Bloc {
  // ignore: close_sinks
  final _themeController = StreamController<bool>();

  get changeTheme => _themeController.sink.add;

  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();

class SpaceBetween extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 55.5,
    );
  }
}
