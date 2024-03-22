import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 40,
                    height: 70,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      '01\n\nMo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 40,
                    height: 70,
                    alignment: Alignment.center,
                    child: const Text(
                      '02\n\nDi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 40,
                    height: 70,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      '03\n\nMi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 40,
                    height: 70,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      '04\n\nDo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 40,
                    height: 70,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      '05\n\nFr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}