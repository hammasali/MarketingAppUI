import 'package:adobe_assignment/home8.dart';
import 'package:adobe_assignment/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home18 extends StatefulWidget {
  const Home18({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home18> {
  int _currentIndex = 0;

  get _getAppBar => AppBar(
        title: Text(
          'Dashboard',
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
                Icons.menu,
                size: 30.0,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          Icon(
            Icons.phone,
            size: 30.0,
          ),
          SizedBox(
            width: 15.0,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30.0,
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

  get _getContainers => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //================FIRST CONTAINER============================

          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '4',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 50,
                      color: const Color(0xf2fe9a4d),
                      letterSpacing: 0.44999999999999996,
                      fontWeight: FontWeight.w500,
                      height: 2.94,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                  Divider(
                    thickness: 1.0,
                    height: 20.0,
                    color: const Color(0xfffea35e),
                  ),
                  Text(
                    'Today’s Assigned\n        Request',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: const Color(0xde000000),
                      letterSpacing: 0.11699999999999999,
                      fontWeight: FontWeight.w500,
                      height: 1.8461538461538463,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),

          //================SECOND CONTAINER============================
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 50,
                      color: const Color(0xf2fe9a4d),
                      letterSpacing: 0.44999999999999996,
                      fontWeight: FontWeight.w500,
                      height: 2.94,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                  Divider(
                    thickness: 1.0,
                    height: 20.0,
                    color: const Color(0xfffea35e),
                  ),
                  Text(
                    'Today’s Completed\n         Request',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: const Color(0xde000000),
                      letterSpacing: 0.11699999999999999,
                      fontWeight: FontWeight.w500,
                      height: 1.8461538461538463,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  get _getHeaders => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Pending Requests :',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: const Color(0xde000000),
              fontWeight: FontWeight.w500,
              height: 2,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
          Row(
            children: [
              Text(
                'Filter',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xde000000),
                  fontWeight: FontWeight.w500,
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
              Icon(
                Icons.filter_alt,
                color: const Color(0xfffea35e),
                size: 20.0,
              )
            ],
          ),
        ],
      );

  get _getBody => ListView.separated(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Home8())),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0x49f3f3f3),
                border: Border.all(width: 1.0, color: const Color(0x49fe9f56)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0c000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
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
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                  index == 0 || index == 3
                                      ? Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: const Color(0xff8ad348),
                                          ),
                                          child: Text(
                                            'ONGOING',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 11,
                                              color: const Color(0xfff9f9f9),
                                              letterSpacing:
                                                  0.19799999999999998,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5454545454545454,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      : Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: const Color(0xfff4997E),
                                          ),
                                          child: Text(
                                            'Pending',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 11,
                                              color: const Color(0xfff9f9f9),
                                              letterSpacing:
                                                  0.19799999999999998,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5454545454545454,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: const Color(0xff212121),
                                  letterSpacing: 0.11699999999999999,
                                  height: 2.076923076923077,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Customer Name :',
                                  ),
                                  TextSpan(
                                    text: '   Siddhesh Dumbre',
                                    style: TextStyle(
                                      color: const Color(0xff6b6b6b),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: const Color(0xff212121),
                                  letterSpacing: 0.11699999999999999,
                                  height: 2.076923076923077,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Service Date :',
                                  ),
                                  TextSpan(
                                    text: '   11th Dec, 2020 (03:06 PM)',
                                    style: TextStyle(
                                      color: const Color(0xff6b6b6b),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: const Color(0xff212121),
                                  letterSpacing: 0.11699999999999999,
                                  height: 2.076923076923077,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Request Date :',
                                  ),
                                  TextSpan(
                                    text: '  11th Dec, 2020 (03:06 PM)',
                                    style: TextStyle(
                                      color: const Color(0xff6b6b6b),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Color(0x2753646C),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'View ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: const Color(0xfff6813e),
                            letterSpacing: 0.21599999999999997,
                            fontWeight: FontWeight.w500,
                            height: 1.6666666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          width: 1.0,
                          height: 20.0,
                          color: Color(0x2753646C),
                        ),
                        Text(
                          'End Service',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: const Color(0xfff6813e),
                            letterSpacing: 0.21599999999999997,
                            fontWeight: FontWeight.w500,
                            height: 1.6666666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10.0,
          );
        },
      );

  get _getBottomNavigation => BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Earnings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined), label: 'My Requests'),
        ],
        selectedItemColor: const Color(0xfffea35e),
        selectedIconTheme: IconThemeData(color: const Color(0xfffea35e)),
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 10,
          color: const Color(0xfff09e5c),
          fontWeight: FontWeight.w600,
          height: 1.6,
        ),
        unselectedItemColor: const Color(0xff767676),
        unselectedIconTheme: IconThemeData(
          color: const Color(0xff767676),
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 10,
          color: const Color(0xff767676),
          fontWeight: FontWeight.w600,
          height: 1.6,
        ),
      );

  get _getDrawer => Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assests/images/one.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: const Color(0xff535151),
                            letterSpacing: -0.187,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ))),
            _getListTile('Home', UtilsIcons.home),
            _getListTile('My Request', UtilsIcons.myRequest),
            _getListTile('My Profile', UtilsIcons.myProfile),
            _getListTile('Change Password', UtilsIcons.changePassword),
            _getListTile('Earnings', UtilsIcons.earnings),
            _getListTile('Terms and condition', UtilsIcons.termsAndCondition),
            _getListTile('FAQ', UtilsIcons.FAQ),
            _getListTile('Logout', UtilsIcons.logOut),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar,
      drawer: _getDrawer,
      bottomNavigationBar: _getBottomNavigation,
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 10.0),
            child: _getContainers,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: _getHeaders,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _getBody,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getListTile(String title, String icon) => ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
        dense: true,
        leading: SvgPicture.string(
          icon,
          allowDrawingOutsideViewBox: true,
          fit: BoxFit.fill,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: const Color(0xff535151),
                fontFamily: 'Poppins',
                fontSize: 13,
                letterSpacing: -0.143,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
