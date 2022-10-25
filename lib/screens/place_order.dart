import 'package:flutter/material.dart';
import 'package:ilaundary/screens/order_details.dart';
import 'package:ilaundary/widgets/mytextfield.dart';

class PlaceOrder extends StatefulWidget {
  PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  final TextEditingController colourType = TextEditingController();
  final TextEditingController clotheType = TextEditingController();
  final TextEditingController price = TextEditingController();
  final TextEditingController quantity = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black87,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.person)
                ],
              ),
            )
          ],
          centerTitle: true,
          title: const Text(
            "Place Order",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  "Enter the details of your laundary orders and click to proceed",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        customTextForm(clotheType, "Clothe typr", ""),
                        const SizedBox(
                          height: 10,
                        ),
                        customTextForm(colourType, "Clothe colour", ""),
                        const SizedBox(
                          height: 10,
                        ),
                        customTextForm(price, "Price", "₦ "),
                        const SizedBox(
                          height: 10,
                        ),
                        flatTextForm(quantity, "Quantity", "Quantity"),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return OrderDetails(
                                        colourType: colourType.text,
                                        clothType: clotheType.text);
                                  }),
                                );
                              }
                            },
                            child: const Text("Proceed"))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
