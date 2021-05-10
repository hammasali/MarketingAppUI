import 'package:adobe_assignment/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home8 extends StatelessWidget {
  const Home8({Key key}) : super(key: key);

  get _getAppBar => AppBar(
        title: Text(
          'Service Detail',
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        toolbarHeight: 40.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color: const Color(0xfffea35e),
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                size: 20.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          },
        ),
        actions: <Widget>[
          SvgPicture.string(
            UtilsIcons.phone,
            allowDrawingOutsideViewBox: true,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: const Color(0xfffea35e),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        backwardsCompatibility: false,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          color: const Color(0xfffea35e),
          fontWeight: FontWeight.w500,
          height: 1.5555555555555556,
        ),
      );

  get _getIdResponse => Row(
        children: <Widget>[
          Text(
            'Req ID :',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: const Color(0xff212121),
              letterSpacing: 0.252,
              height: 1.4285714285714286,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '#SREQ2546',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff212121),
                    letterSpacing: 0.252,
                    height: 1.4285714285714286,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'PENDING',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    color: const Color(0xfff4997E),
                    letterSpacing: 0.19799999999999998,
                    fontWeight: FontWeight.w800,
                    height: 1.5454545454545454,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      );

  get _getStatus => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Service Status :',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: const Color(0xff212121),
              letterSpacing: 0.252,
              height: 1.4285714285714286,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
          Text(
            '11th Dec, 2020 (03:06 PM)',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0x75000000),
              letterSpacing: 0.252,
              height: 1.4285714285714286,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          )
        ],
      );

  get _getRoadMapStatus => Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 20.0, 50.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SvgPicture.string(
                  UtilsIcons.circle,
                  allowDrawingOutsideViewBox: true,
                ),
                SvgPicture.string(
                  UtilsIcons.dotLine,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fitHeight,
                ),
                SvgPicture.string(
                  UtilsIcons.circle,
                  allowDrawingOutsideViewBox: true,
                ),
                SvgPicture.string(
                  UtilsIcons.dotLine,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fitHeight,
                ),
                SvgPicture.string(
                  UtilsIcons.circle,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Requested',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff4a4444),
                        letterSpacing: -0.143,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '11th Dec, 2020 (03:06 PM)',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0x75000000),
                        letterSpacing: 0.252,
                        height: 1.4285714285714286,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                SizedBox(
                  height: 55.0,
                ),
                Text(
                  'Started',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: const Color(0xff4a4444),
                    letterSpacing: -0.143,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 73.0,
                ),
                Text(
                  'Completed',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: const Color(0xff4a4444),
                    letterSpacing: -0.143,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      );

  get _getDataTable => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getText('Billing :', true),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _getText('Visiting fee', false),
                _getText('Rs 200', true)
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _getText('Service fee', false),
                _getText('Rs 0', true)
              ],
            ),
          ),
          Divider(
            height: 25.0,
            thickness: 1.0,
            color: Color(0x2753646C),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _getText('Total Amount', true),
                _getText('Rs 200', true)
              ],
            ),
          ),
          Divider(
            height: 30.0,
            thickness: 1.0,
            color: Color(0x2753646C),
          ),
        ],
      );

  get _getCustomerDetails => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getText('Customer Details :', true),
          SizedBox(
            height: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _getText('Name :', false),
                  SizedBox(
                    height: 8.0,
                  ),
                  _getText('Mobile Number :', false),
                  SizedBox(
                    height: 8.0,
                  ),
                  _getText('Address : ', false),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _getText('Siddhesh Dumbre', true),
                  SizedBox(
                    height: 8.0,
                  ),
                  _getText('7988445658', true),
                  SizedBox(
                    height: 8.0,
                  ),
                  _getText(
                      'Jaine Edgar 110c Block c, Near \nChakala Metro Station Mumbai, IN \nMaharastra. 401107',
                      true),
                ],
              ),
            ],
          ),
        ],
      );

  get _getButton => Container(
    padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
          gradient: LinearGradient(
            begin: Alignment(-1.21, -2.03),
            end: Alignment(1.79, 4.01),
            colors: [const Color(0xfff3ba52), const Color(0xfff86234)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Text(
          'Start Service',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color(0xffffffff),
            letterSpacing: 1.246,
            fontWeight: FontWeight.w600,
            height: 1.1428571428571428,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: _getIdResponse,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Divider(
                thickness: 1.0,
                color: Color(0x2753646C),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _getStatus,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _getRoadMapStatus,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
              child: _getDataTable,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _getCustomerDetails,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20.0),
              child: _getButton,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getText(String s, bool header) {
    return Text(
      s,
      style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: header ? 14 : 13,
          color: header ? const Color(0xff5a5858) : const Color(0xff4a4444),
          letterSpacing: header ? -0.143 : 0.252,
          height: 1.4285714285714286,
          fontWeight: header ? FontWeight.w400 : FontWeight.w300),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: TextAlign.left,
    );
  }
}
