import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:organico_flutter/theme.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).primaryColor,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'OTAC Number',
            style: nunitoTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 48,
                    ),
                    Center(
                      child: Text(
                        'Enter Authorization Code',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Text(
                        'We have sent SMS to',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: greyColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        '+62 (XXX) XXX-X120',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ' 6 Digit Code',
                          hintStyle:
                              nunitoTextStyle.copyWith(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      width: double.infinity,
                      height: 50,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Resend Code',
                            style: nunitoTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: primaryColor,
                            ),
                            textAlign: TextAlign.right),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(),
                      // ignore: deprecated_member_use
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/reset-password');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor, // Màu nền của nút
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Next',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
