import 'package:flutter/material.dart';
import 'package:local_host_api_test/blocs/bloc_album.dart';
import 'package:local_host_api_test/blocs/bloc_provider.dart';
import 'package:local_host_api_test/ui/screens/album_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<BlocAlbum>(bloc: BlocAlbum(),child: AlbumScreen(),),
    );
  }
}

