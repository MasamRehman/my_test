import 'package:flutter/material.dart';

import '../utilitied/colors.dart';

class VerticleProduct extends StatefulWidget {
  final Map<String, dynamic>? product;
  VerticleProduct({super.key, this.product});

  @override
  State<VerticleProduct> createState() => _VerticleProductState();
}

class _VerticleProductState extends State<VerticleProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 9),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "${widget.product!["image"]}",
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "${widget.product!["name"]}",
            style: TextStyle(
                fontSize: 20,
                color: Constantcolor.a0F1010,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            "${widget.product!["series"]}",
            style: TextStyle(
                color: Constantcolor.a757575,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "\$${widget.product!["price"]}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
