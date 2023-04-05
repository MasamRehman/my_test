import 'package:first_project/utilitied/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({super.key, this.product_detail});
  final Map<String, dynamic>? product_detail;
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _selectedIndex = -1;
  List<Color> colorList = [
    Constantcolor.DA7777,
    Constantcolor.EB55C1,
    Constantcolor.B676060,
  ];
  List<String> nameList = [
    'chalk pink',
    'light pink',
    'dark order',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Constantcolor.ECF6F6,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/arrow back.png",
                              scale: 4,
                            ),
                          ),
                          Image.asset(
                            "${widget.product_detail!["image"]}",
                            scale: 4,
                          ),
                          Image.asset(
                            "assets/favourite.png",
                            scale: 4,
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.product_detail!["name"]}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "(with solo app)",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Constantcolor.b695D5D),
                          ),
                        ],
                      ),
                      Text(
                        "\$${widget.product_detail!["price"]}",
                        style: TextStyle(
                            color: Constantcolor.a5534A5,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    "Color",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      height: 55,
                      child: ListView.separated(
                          shrinkWrap: true,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            bool isSelected = index == _selectedIndex;
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 55,
                                width: 105,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: isSelected
                                            ? Colors.black
                                            : Constantcolor.CCBCBC),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: colorList[index]),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${nameList[index]}",
                                        style: TextStyle(
                                            color: Constantcolor.BAAAAA,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 5,
                            );
                          },
                          itemCount: 3)),
                  SizedBox(
                    height: 42,
                  ),
                  Row(
                    children: [
                      Text(
                        "Detail",
                        style: TextStyle(
                            color: Constantcolor.b827E7E,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 43,
                      ),
                      Text(
                        "Revews",
                        style: TextStyle(
                            color: Constantcolor.b827E7E,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    "What is a case study? A case study is a research approach that is used to generate an in-depth, multi-faceted understanding of a complex issue in its real-life context. It is an established research design that is used extensively in a wide variety of disciplines,",
                    style: TextStyle(color: Constantcolor.AAA0A0, fontSize: 15),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 68,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Constantcolor.a004EDA,
                        borderRadius: BorderRadius.all(Radius.circular(21))),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
