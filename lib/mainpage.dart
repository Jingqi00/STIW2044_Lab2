import 'package:flutter/material.dart';
import 'package:sbusiness/user.dart';
import 'homepage.dart';
import 'login.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({Key? key,  required this.user}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: const Text('My SHOP'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {
                'Sign up',
                'Logout',
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),],     
      ),
    
    );
  }

  void handleClick(String value) {
      switch (value) {
        case 'Sign up':
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage(user: widget.user)));
          break;
        case 'Logout':
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage(user: widget.user)));
          break;
      }
    }
}
