import 'package:flutter/material.dart';

class AllgemeinesPage extends StatefulWidget {
  const AllgemeinesPage({Key? key}) : super(key: key);

  @override
  _AllgemeinesPageState createState() => _AllgemeinesPageState();
}

class _AllgemeinesPageState extends State<AllgemeinesPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
                'Allgemeines',
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
                color: const Color.fromARGB(255, 33, 40, 63),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.lightBlue,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightBlue,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: const Color.fromARGB(255, 43, 45, 59),
                tabs: const [
                  Tab(text: 'Fehlstunden'),
                  Tab(text: 'Termine'),
                  Tab(text: 'Neues'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
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

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
