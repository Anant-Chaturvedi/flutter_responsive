import 'package:flutter/material.dart';
import 'package:flutter_responsive/media_query.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Without MediaQuery',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 120,
                color: Colors.redAccent.shade100,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 180, top: 10),
                      child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Card(
                            color: Colors.grey.shade300,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 32),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: Card(
                              color: Color.fromARGB(255, 132, 240, 136),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.redAccent.shade100,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Stack(children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Card(
                                color: Color.fromARGB(255, 132, 240, 136),
                              )),
                        ),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Card(
                          color: Colors.grey.shade300,
                        )),
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
