import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails(
      {super.key,
      required this.colourType,
      required this.clothType,
      required this.quantity});
  final String colourType;
  final String clothType;
  final String quantity;
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("Clothe type is ${widget.clothType}"),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: Text("Colour type is ${widget.colourType}"),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: Text("Colour type is ${widget.quantity}"),
          )
        ],
      )),
    );
  }
}
