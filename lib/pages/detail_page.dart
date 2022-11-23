import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image.asset(
                        'assets/images/image2.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF191C24),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white24,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF191C24),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.abc,
                                color: Colors.white24,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const BluredWidget(),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              const SliverToBoxAdapter(
                child: Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white60),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverToBoxAdapter(
                child: RichText(
                  text: const TextSpan(
                    text:
                        'A cappucino is a coffee-based drink made primarily from espresso and milk',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                      TextSpan(
                          text: ' ...Read More',
                          style: TextStyle(color: Color(0xFFD27842)))
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 32),
              ),
              const SliverToBoxAdapter(
                child: Text(
                  'Size',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white60),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              const CoffeeSizeWidget(),
              const SliverToBoxAdapter(
                child: SizedBox(height: 50),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(color: Colors.white54),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              '\$',
                              style: TextStyle(
                                  color: Color(0xFFD27842),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' 4.20',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD27842),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeSizeWidget extends StatelessWidget {
  const CoffeeSizeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFD27842),
              ),
            ),
            child: const Center(
              child: Text(
                'S',
                style: TextStyle(
                    color: Color(0xFFD27842),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFD27842),
              ),
            ),
            child: const Center(
              child: Text(
                'M',
                style: TextStyle(
                    color: Color(0xFFD27842),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFD27842),
              ),
            ),
            child: const Center(
              child: Text(
                'L',
                style: TextStyle(
                    color: Color(0xFFD27842),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BluredWidget extends StatelessWidget {
  const BluredWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.38),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cappucino',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'With Oat Milk',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Color(0xFFD27842),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Text(
                              '(6.986)',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   width: 16,
                  // ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: const Color(0xFF12141A),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.coffee_sharp,
                                    color: Color(0xFFD27842),
                                  ),
                                ),
                                Text(
                                  'Coffee',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: const Color(0xFF12141A),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.pin_drop,
                                    color: Color(0xFFD27842),
                                  ),
                                ),
                                Text(
                                  'Milk',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color(0xFF12141A),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Medium Roasted',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
