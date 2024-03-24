import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 45, 59),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 43, 45, 59),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Übersicht',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent
              ),
              height: 110,
              width: MediaQuery.of(context).size.width - 40,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.lightBlue,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightBlue,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: const Color.fromARGB(255, 43, 45, 59),
                tabs: const [
                  Tab(text: '01\nMo'),
                  Tab(text: '02\nDi'),
                  Tab(text: '03\nMi'),
                  Tab(text: '04\nDo'),
                  Tab(text: '05\nFr'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Icon(Icons.add, size: 100, color: Colors.white,),
                  Icon(Icons.add, size: 100, color: Colors.white,),
                  Icon(Icons.add, size: 100, color: Colors.white,),
                  Icon(Icons.add, size: 100, color: Colors.white,),
                  Icon(Icons.add, size: 100, color: Colors.white,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}