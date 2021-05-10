import 'package:flutter/material.dart';

import 'home18.dart';

class XDGooglePixel44XL13 extends StatelessWidget {
  const XDGooglePixel44XL13({Key key}) : super(key: key);

  get _getTitleImage => Container(
        height: 80.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assests/images/one.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
      );

  get _getImage => Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assests/images/two.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );

  get _getTextField => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        margin: const EdgeInsets.only(top: 10.0),
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: const Color(0xfffff5ec),
          border: Border.all(width: 1.0, color: const Color(0x40ff9a4d)),
        ),
        child: Row(
          children: [
            Text(
              '+91',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: const Color(0xde000000),
                letterSpacing: 0.496,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 1.0,
              height: 20.0,
              color: Color(0x2753646C),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.left,
                showCursor: false,
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: '10 Digit Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xc4707070),
                    letterSpacing: 0.496,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
            )
          ],
        ),
      );

  get _getContainers => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _containerBox(),
          _containerBox(),
          _containerBox(),
          _containerBox()
        ],
      );

  get _getResend => Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Resend',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: const Color(0xffff9a4d),
            letterSpacing: 0.496,
            height: 1.5,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
      );

  get _getLogin => Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
          gradient: LinearGradient(
            begin: Alignment(-1.21, -2.03),
            end: Alignment(1.79, 4.01),
            colors: [const Color(0xfff3ba52), const Color(0xfff86234)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: const Color(0xffffffff),
              letterSpacing: 1.424,
              fontWeight: FontWeight.w600,
              height: 1,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
      );

  get _getRegister => Text.rich(
        TextSpan(
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color(0xff4b4b4b),
            letterSpacing: 0.252,
            height: 1.4285714285714286,
          ),
          children: [
            TextSpan(
              text: 'Not a User?',
            ),
            TextSpan(
              text: ' Register',
              style: TextStyle(
                color: const Color(0xffff9a4d),
              ),
            ),
          ],
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.center,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
              child: _getTitleImage,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: _getImage,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: _getTextField,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: _getContainers,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _getResend,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 15.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Home18())),
                child: _getLogin,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _getRegister,
            ),
          ],
        ),
      ),
    );
  }

  Widget _containerBox() => Container(
        height: 75.0,
        width: 75.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xfffff5ec),
          border: Border.all(width: 1.0, color: const Color(0x40ff9a4d)),
        ),
      );
}
