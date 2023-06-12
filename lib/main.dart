import 'package:flutter/material.dart';
import 'components/favorite.dart';
import 'components/saved.dart';
import 'components/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pertemuan09Screen(),
    );
  }
}

class Pertemuan09Screen extends StatefulWidget {
  const Pertemuan09Screen({super.key});

  @override
  State<Pertemuan09Screen> createState() => _Pertemuan09ScreenState();
}

class _Pertemuan09ScreenState extends State<Pertemuan09Screen> {
  buttonSheets(BuildContext context) {
    return Builder(builder: ((context) {
      return Center(
        child: TextButton(
          onPressed: () {
            showBottomSheet(
                enableDrag: true,
                context: context,
                builder: (context) {
                  final theme = Theme.of(context);
                  return Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          'More Info',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                        tileColor: theme.colorScheme.primary,
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          'Facebook',
                          textAlign: TextAlign.center,
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_right,
                              color: Colors.black,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          'Twitter',
                          textAlign: TextAlign.center,
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_right,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  );
                });
          },
          child: Text('Click for more'),
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan 09'),
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: Text('Music'),
            ),
            Tab(
              child: Text('Favorite'),
            ),
            Tab(
              child: Text('Saved'),
            ),
          ]),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.purple),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nanda prayoga',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Nandaprayoga000@gmail.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
                },
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('About us'),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Music(),
            buttonSheets(context),
            TextButton(onPressed: (() {}), child: Text('hallo')),
            TextButton(onPressed: (() {}), child: Text('hello')),
            // TextButton(
            // TextButton(
            //   onPressed: () {
            //     print('Saved');
            //   },
            //   child: Text('Saved'),
            // TextButton(
            // ),
          ],
        ),
      ),
    );
  }
}
