import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive.dart';

Size? mq;

class WithMediaQuery extends StatefulWidget {
  const WithMediaQuery({super.key});

  @override
  State<WithMediaQuery> createState() => _WithMediaQueryState();
}

class _WithMediaQueryState extends State<WithMediaQuery> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'With MediaQuery',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mq!.width * .03, vertical: mq!.height * .03),
              child: Container(
                height: mq!.height * .15,
                color: Colors.redAccent.shade100,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: mq!.width * .01,
                          right: mq!.width * .5,
                          top: mq!.height * .007),
                      child: SizedBox(
                          height: mq!.height * .07,
                          width: double.infinity,
                          child: Card(
                            color: Colors.grey.shade300,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: mq!.width * .01, right: mq!.width * .08),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: mq!.height * .07,
                            width: double.infinity,
                            child: const Card(
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
                  padding: EdgeInsets.symmetric(
                      horizontal: mq!.width * .03, vertical: mq!.height * .035),
                  child: Container(
                    height: mq!.height * .15,
                    width: double.infinity,
                    color: Colors.redAccent.shade100,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Stack(children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mq!.width * .03,
                            vertical: mq!.height * .01),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: mq!.height * .07,
                              width: double.infinity,
                              child: const Card(
                                color: Color.fromARGB(255, 132, 240, 136),
                              )),
                        ),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mq!.width * .3),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: mq!.height * .07,
                        width: double.infinity,
                        child: Card(
                          color: Colors.grey.shade300,
                        )),
                  ),
                ),
              ],
            ),
                ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ResponsivePage()));
                },
                icon: const Icon(Icons.navigate_next_outlined),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,shape: StadiumBorder()),
                label: const Text('Without MediaQuery'))
          ],
        ),
      ),
    );
  }
}
