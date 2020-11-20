import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: 'Pigeons',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: MainPage(),
        );
    }

}

class MainPage extends StatefulWidget{
    HomePage createState()=> HomePage();
}

class HomePage extends State<MainPage>{
    int _currentIndex = 0;

    final tabs = [
        Center(child:SingleChildScrollView(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
            ImageBanner("assets/images/d.jpg"),
            TextSection("taste the cloud","what"),
            ImageBanner("assets/images/a.jpeg"),
            TextSection("taste the rain","up"),
            ImageBanner("assets/images/b.jpeg"),
            TextSection("taste the sun","dawg"),
            ImageBanner("assets/images/c.jpeg"),
            ],))),
        Center(child: Text('Search')),
        Center(child: Text('Camera')),
        Center(child: Text('Profile')),
    ]; 
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Pigeons'),
            ),
            body: tabs[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                type: BottomNavigationBarType.fixed,
                iconSize: 30,
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        title: Text('Home'),
                        backgroundColor: Colors.blue
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        title: Text('Search'),
                        backgroundColor: Colors.red
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.camera),
                        title: Text('Camera'),
                        backgroundColor: Colors.green
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        title: Text('Profile'),
                        backgroundColor: Colors.yellow
                    ),
                ],
                onTap: (index){
                    setState((){
                        _currentIndex = index;
                    }
                    );
                }
            ),
        );
    }

}