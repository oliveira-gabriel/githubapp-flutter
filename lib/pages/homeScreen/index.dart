import 'package:flutter/material.dart';
import 'package:github/models/User.dart';

/// This is the stateful widget that the main application instantiates.
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

/// This is the private State class that goes with HomeScreen.
class HomeScreenState extends State<HomeScreen> {
  final User user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hakuna matata'),
      ),
      body: Center(
        child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0), 
            child: Text(
              'Gabriel Oliveira',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(
            '1234',
            style: TextStyle(
              color: Theme.of(context).accentColor)
            ),
          Text(
            'oliveira-gabriel',
            style: TextStyle(
              color: Theme.of(context).accentColor)
            ),
        ],
      ),
      ),
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: FloatingActionButtonLocation.endDocked,
        shape: const CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/addUser'),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.primary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Call',
              icon: const Icon(Icons.phone_android_outlined),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Call',
              icon: const Icon(Icons.account_balance_wallet),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}