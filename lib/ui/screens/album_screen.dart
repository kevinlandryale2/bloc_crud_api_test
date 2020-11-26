import 'package:flutter/material.dart';
import 'package:local_host_api_test/blocs/bloc_album.dart';
import 'package:local_host_api_test/blocs/bloc_provider.dart';
import 'package:local_host_api_test/models/albums.dart';
import 'package:local_host_api_test/ui/list/album_list.dart';
import 'package:local_host_api_test/ui/widgets/no_data.dart';

class AlbumScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bloc=BlocProvider.of<BlocAlbum>(context);
    return Scaffold(
      appBar:AppBar(
        title: Text('Api test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: StreamBuilder<List<Album>>(
                  stream: bloc.stream,
                  builder: (context, snap){
                    if(snap==null){
                      return NoData('Pas de données');
                    }
                    else if(!snap.hasData) {
                      return NoData('Données Vide');
                    } else{
                      return ListAlbum(snap.data);
                    }
                  }
              ),
            )
          ],
        ),
      )
    );
  }
}