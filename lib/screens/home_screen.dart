import 'package:flutter/material.dart';
import 'package:ilaundary/screens/place_order.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 2),
          child: const Center(
            child: Text(
              "MY iLaundary",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        ),
        Container(
          width: 400,
          height: 100,
          color: Colors.blueAccent,
          margin: const EdgeInsets.only(top: 10),
          child: const Center(
            child: Text(
              "My Orders",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 180,
                color: Colors.amberAccent,
                padding: const EdgeInsets.all(20),
                child: Column(children: const <Widget>[
                  Text("41"),
                  Text("Completed"),
                ]),
              ),
              Container(
                width: 180,
                height: 100,
                color: Colors.redAccent,
                padding: const EdgeInsets.all(20),
                child: Column(children: const [
                  Text(
                    "20",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Pending",
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 200,
                  width: 400,
                  color: Colors.greenAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  PlaceOrder(),
                              ));
                        },
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.all(15),
                          color: Colors.blueAccent,
                          width: 200,
                          child: const Text(
                            "Place Order",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(15),
                        color: Colors.pinkAccent,
                        width: 200,
                        child: const Text(
                          "Exit",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
