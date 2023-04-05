import 'package:first_project/detail_screen.dart';
import 'package:first_project/utilitied/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/verticle_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> userdata = [
    {
      "image": "assets/Apple watch.png",
      "name": "Apple watch",
      "series": "series 1",
      "price": "123"
    },
    {
      "image": "assets/Galaxy watch.png",
      "name": "Galaxy watch",
      "series": "series 2",
      "price": "124"
    },
    {
      "image": "assets/mix watch.png",
      "name": "mix watch",
      "series": "series 3",
      "price": "233"
    },
    {
      "image": "assets/Amazon fit watch.png",
      "name": "Amaz fit watch",
      "series": "series 4",
      "price": "444"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantcolor.ECF6F6,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 44,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Image.asset(
                    "assets/Vector.png",
                    scale: 4,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 51,
                      width: 227,
                      child: TextFormField(
                        decoration: InputDecoration(
                            // contentPadding: EdgeInsets.only(
                            //   left: 20,
                            //   top: 11,
                            //   bottom: 15,
                            // ),
                            isDense: true,
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: 14, left: 21, bottom: 11),
                              child: Image.asset(
                                "assets/search.png",
                                scale: 4,
                              ),
                            ),
                            hintText: "search product",
                            hintStyle: TextStyle(
                              color: Constantcolor.a757575,
                              fontSize: 17,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constantcolor.a757575),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constantcolor.a757575),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28))),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constantcolor.a757575),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constantcolor.a757575),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28)))),
                      ),
                    ),
                  )
                  // Container(
                  //   height: 51,
                  //   width: 227,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.all(Radius.circular(28))),
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: Text(
                "find your suitable watch now.",
                style: TextStyle(color: Constantcolor.a000000, fontSize: 36),
              ),
            ),
            SizedBox(
              height: 46,
            ),
            // GridView.count(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 10.0,
            //     mainAxisSpacing: 10.0,
            //     shrinkWrap: true,
            //     childAspectRatio: 3 / 6,
            //     children: List.generate(20, (index) {
            //       return Container(height: 234, child: VerticleProduct());
            //     }))
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 2.7 / 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: userdata.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailScreen(
                                        product_detail: userdata[index],
                                      )));
                        },
                        child: VerticleProduct(
                          product: userdata[index],
                        ),
                      );
                    }),
              ),
            ),
            // VerticleProduct()
          ],
        ),
      )),
    );
  }
}
