import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/home.dart';
import './screens/category.dart';
import './screens/deals.dart';
import './screens/cart.dart';
import './screens/account.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'Lulu wear',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String searchValue = '';
final List<String> _suggestions = [
  'Shoes',
  'Accessories',
  'Dress',
  'shirt',
  'Skirt',
  'Blouse',
  'Jeans',
];

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
   final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<widget> _pages = [
    const Homescreen(),
    const CategoryScreen(),
    const DealsScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  void _onItemmTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

@override
Widget build(BuildContext context) {
  var selectedIndex;
  return Scaffold(
    appBar: EasySearchBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.black12),
        titleTextStyle: const TextStyle(fontSize: 50, color: blackColor),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        appBarHeight: 58,
        animationDuration: const Duration(milliseconds: 600),
        isFloating: true,
        searchHintText: "Search Product...",
        title: const Text('Lulu wear'),
        onSearch: (value) => setState(() => searchValue = value),
        suggestions: _suggestions),
    body: _pages[selectedIndex],
    //background color
          items: [
          CurvedNavigationBarItem(icon: const Icon(Icons.home), label: "Home"),
          CurvedNavigationBarItem(
              icon: const Icon(Icons.category), label: "Category"),
          CurvedNavigationBarItem(icon: const Icon(Icons.home), label: "Deals"),
          CurvedNavigationBarItem(
              icon: const Icon(Icons.shopping_cart), label: "Cart"),
          CurvedNavigationBarItem(
              icon: const Icon(Icons.person), label: "Account"),
        ],
         onTap: (index) {
          // Update the state when an item is tapped
          setState(() {
            var _selectedIndex = index;
          });
        },
      ),
    
  }
  
  void setState(Null Function() param0) {
  }

CurvedNavigationBarItem({required Icon icon, required String label}) {
}

class DealsScreen {
  const DealsScreen();
}

class CategoryScreen {
  const CategoryScreen();
}

class ProfileScreen {
  const ProfileScreen();
}

class Homescreen {
  const Homescreen();
}

class _pages {}

//await Firebase.initializeApp(
// options: DefaultFirebaseOptions.currentPlatform,
//);
