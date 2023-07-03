import 'package:bubolechka2/data/categories.dart';
import 'package:bubolechka2/models/bubo_category.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const BuboApp());
}
int currentIndex = 1;


class BuboApp extends StatelessWidget {
  const BuboApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bubolechka 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BuboHomePage(),
    );
  }
}

///
/// HomePage of the Bubolechka Application
///
/// Displays the available categories and language selection on the main screen.
///
class BuboHomePage extends StatefulWidget {
  const BuboHomePage({super.key});

  @override
  State<BuboHomePage> createState() => _BuboHomePageState();
}

class _BuboHomePageState extends State<BuboHomePage> {
  String _language = 'bg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assets/main_background.png'),
                fit: BoxFit.cover)),
            child: null,
          ),
          Positioned(
            top: 30,
            bottom: 100,
            left: 20,
            right: 20,
            child: BuboCategoryViewer(_language),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            width: 200,
            child: Image.asset('assets/bubo_logo.png'),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
          height: 80,
          width: 10,
          child: Container(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Color.fromARGB(255, 27, 120, 196),
              unselectedItemColor: Colors.blue,
              selectedFontSize: 17,
              unselectedFontSize: 15,
              items: const [
                BottomNavigationBarItem(
                  label: 'New post',
                  icon: Icon(FontAwesomeIcons.plus),
                ),
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(FontAwesomeIcons.house),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(FontAwesomeIcons.user),
                ),
              ],
              currentIndex: currentIndex,
              onTap: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          )
    ),
  );
  }
}

///
/// Category view for the main screen
///
/// Gets all available categories and places them into a list view
///
///
class BuboCategoryViewer extends StatelessWidget {
  final String language;
  BuboCategoryViewer(this.language, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: buboCategories.map((buboCategory) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: BuboCategoryListItem(language, buboCategory)
        );
      }).toList(),
    );
  }
}

///
/// Widget for displaying a category on the main screen
///
/// TODO: Модифицирайте този клас така, че да показва не само името на
///       категорията, но и нейната картинка.
///       Картинките за всяка категория могат да се вземат по следният начин:
///       Image.asset(category.image)
///
///
class BuboCategoryListItem extends StatelessWidget {
  final String language;
  final BuboCategory category;

  const BuboCategoryListItem(this.language, this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Image.asset(
              category.image,
              fit: BoxFit.cover,
              width: 400.0,
            ),
            
          ],
        )
      ],
    );
  }
}