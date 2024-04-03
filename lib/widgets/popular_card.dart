import 'package:flutter/material.dart';
import 'package:organico_flutter/theme.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "color": const Color(0xffE3553F).withOpacity(0.15),
        "name": "Paprika",
        "shop": "vegshop",
        "price": "4.99",
        "imageUrl": "assets/paprika.png",
      },
      {
        "color": const Color(0xff76B226).withOpacity(0.15),
        "name": "Broccoli",
        "shop": "vegshop",
        "price": "4.99",
        "imageUrl": "assets/broccoli.png",
      },
      {
        "color": const Color(0xff3F7D3C).withOpacity(0.15),
        "name": "Lettuce",
        "shop": "vegshop",
        "price": "4.99",
        "imageUrl": "assets/lettuce.png",
      },
      {
        "color": const Color(0xffE9B04F).withOpacity(0.15),
        "name": "Potato",
        "shop": "vegshop",
        "price": "4.99",
        "imageUrl": "assets/potato.png",
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.height / 1300,

          // crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(9),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                color: data[index]['color'],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              data[index]['imageUrl'],
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              data[index]['name'],
                              style: poppinsTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              data[index]['shop'],
                              style: nunitoTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$${data[index]["price"]}/Kg',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/icon_add.png',
                                  width: 36,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
