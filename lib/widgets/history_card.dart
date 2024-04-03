import 'package:flutter/material.dart';
import 'package:organico_flutter/models/order_model.dart';

import 'package:organico_flutter/theme.dart';

class HistoryCard extends StatelessWidget {
  final OrderModel order;
  const HistoryCard(this.order, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    final Color backgroundColor;
    final Color borderColor;
    final Color buttonTextColor;

    if (color == Colors.black) {
      backgroundColor = Colors.white;
      borderColor = const Color(0xffEAEAEA);
      buttonTextColor = Colors.white;
    } else {
      backgroundColor = const Color(0xff1D2335);
      borderColor = const Color(0xff171725);
      buttonTextColor = const Color(0xff171725);
    }
    return ClipRRect(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            order.shop,
                            style: poppinsTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const Spacer(),
                          order.isConfirmed
                              ? Text(
                                  'Confirmed',
                                  style: nunitoTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: primaryColor,
                                  ),
                                )
                              : const Text(
                                  'Canceled',
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff76B226).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/broccoli.png',
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xffE3553F).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/carrot.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            order.time,
                            style: nunitoTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: greyColor),
                          ),
                          const Spacer(),
                          order.isConfirmed
                              ? Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  height: 52,
                                  decoration: const BoxDecoration(),
                                  // ignore: deprecated_member_use
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        side: BorderSide(
                                            color: primaryColor, width: 1),
                                      ),
                                      primary: primaryColor,
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'Order Again',
                                      style: nunitoTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: buttonTextColor,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  height: 52,
                                  decoration: const BoxDecoration(),
                                  // ignore: deprecated_member_use
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        side: BorderSide(
                                            color: Colors.redAccent, width: 1),
                                      ),
                                      primary: Colors.redAccent,
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'Order Again',
                                      style: nunitoTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: buttonTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      )
                    ],
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
