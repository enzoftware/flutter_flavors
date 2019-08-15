import 'package:flutter/material.dart';
import 'package:flutter_flavors/data/api.dart';
import 'package:flutter_flavors/config/flavor_config.dart';
import 'package:flutter_flavors/data/model.dart';

class MyApp extends StatefulWidget {
  final api = PhotoApi();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    widget.api.getphotos().then((result) {
      print(result.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: FlavorConfig.isProduction() ? false : true,
      title: 'Flutter Flavors Example',
      theme: ThemeData(
        primarySwatch: FlavorConfig.instance.color,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter flavors'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You are in :',
                ),
                Text(
                  '${FlavorConfig.instance.name} flavor',
                  style: Theme.of(context).textTheme.display1,
                ),
                Text('Api url : ${FlavorConfig.instance.values.apiUrl}'),
                FutureBuilder(
                  future: widget.api.getphotos(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Photo>> snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data.map<Widget>((photo) {
                          return Padding(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(photo.url),
                                    ),
                                    Center(child: Text(photo.title)),
                                  ],
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.all(8.0),
                          );
                        }).toList(),
                      );
                    }
                    return Container(
                      child: Text('Loading...'),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
