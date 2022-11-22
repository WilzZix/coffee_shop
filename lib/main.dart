import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFFD27842),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.badge,
                      color: Color(0xFFD27842),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.hearing,
                      color: Color(0xFFD27842),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.ring_volume,
                      color: Color(0xFFD27842),
                    ),
                  ),
                ]),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF222730),
                        shape: BoxShape.rectangle,
                      ),
                      height: 30,
                      width: 30,
                      child: const Icon(Icons.menu),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF222730),
                        shape: BoxShape.rectangle,
                      ),
                      height: 30,
                      width: 30,
                      child: const Icon(Icons.person),
                    )
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 30),
              ),
              const SliverToBoxAdapter(
                child: Text(
                  'Find the best cofee for you',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 50),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF222730),
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Find Your Coffee...',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 50),
              ),
              const TabWidget(),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CoffeCardWidget(),
                      );
                    },
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              ),
              const SliverToBoxAdapter(
                child: Text(
                  'Special for you',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              ),
              const SpecialWidget(),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SpecialWidget extends StatelessWidget {
  const SpecialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 170,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF282628),
              Color(0xFF101318),
            ],
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
                child: Image.asset(
                  height: 150,
                  fit: BoxFit.cover,
                  'assets/images/image1.jpg',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Text(
                    softWrap: false,
                    '5 Coffee Beans You\n Must Try!',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CoffeCardWidget extends StatelessWidget {
  const CoffeCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF282628),
            Color(0xFF101318),
          ],
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Image.asset(
                height: 150,
                fit: BoxFit.cover,
                'assets/images/image1.jpg',
              ),
            ),
            const Text(
              'Cappuccino',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'With Oat Milk',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      '\$',
                      style: TextStyle(color: Color(0xFFD27842)),
                    ),
                    Text(
                      ' 4.20',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD27842),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 80.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Cappuccino',
                    style: TextStyle(
                      color: Color(0xFFD27842),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFD27842)),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
