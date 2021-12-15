import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyMap());
//add
class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  //final GlobalKey<ScaffoldState>_drawerscaffoldKey = new GlobalKey <ScaffoldState> ();

  @override
  _MyMapState createState() => _MyMapState();
}
//my api key is AIzaSyBC1EPXfpwVZr8XTP90xB5LN51w98qYdAM
/*class _MyMapState extends State<MyMap> with AutomaticKeepAliveClientMixin {
  late GoogleMapController mapController;

  @override
  bool get wantKeepAlive => true;*/
class _MyMapState extends State<MyMap>{
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text('my map'),
           backgroundColor: Colors.blue,
        ),
           /*leading: IconButton(onPressed: () { setState(() {
              Scaffold(
                  drawer: Drawer(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        const DrawerHeader(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text('Smart city traveller'),
                        ),
                        ListTile(
                          title: const Text('My location'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text('Get directions'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text('another item'),
                          onTap: () {
                            // Update the state of the app
                            // ...
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ));
            });
            }, icon: const Icon(Icons.menu),),
            title: const Text('Sample Map'),
            actions: const [
              //Icon(Icons.favorite),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.search),
              ),
              //Icon(Icons.more_vert),
            ],
            backgroundColor: Colors.lightBlue,
          ),*/
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}

