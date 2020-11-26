import 'package:flutter/material.dart';
import 'package:local_host_api_test/blocs/bloc_hotels.dart';
import 'package:local_host_api_test/blocs/bloc_provider.dart';
import 'package:local_host_api_test/models/hotels.dart';
import 'package:local_host_api_test/ui/list/hotel_list.dart';
import 'package:local_host_api_test/ui/widgets/no_data.dart';

class HelloScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      final bloc=BlocProvider.of<BlocHotels>(context);
      return Scaffold(
        appBar:AppBar(
          title: Text('Api test'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: StreamBuilder<List<Hotel>>(
                stream: bloc.stream,
                  builder: (context, snap){
                    if(snap==null){
                      return NoData('Pas de données');
                    }
                    else if(!snap.hasData) {
                      return NoData('Données Vide');
                    } else{
                      return ListHotel(snap.data);
                    }
                  }
              ),
            )
          ],
        ),
      );
  }
}