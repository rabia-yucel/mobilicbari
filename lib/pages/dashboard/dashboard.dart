import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:share/share.dart';

import '../../utils/constant.dart';
import '../../widgets/app_bar.dart';
import 'MainPage.dart';



// Dashboard with List View notifications

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

// class _DashboardDropdown extends State<Dashboard>
// {
//
// }
class _DashboardState extends State<Dashboard> {


  @override


//getAppBar3('Dashboard'),
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: getAppBar3('Mobil Icbari'),

      body: getBody(context),
    );
  }

  getBody(BuildContext context) {
     return const MainPage();
  }
  /*
  getBody(BuildContext context) {
    return
      Container(
      height: double.infinity,
      width: double.infinity,
      decoration: pageTopDecoration,
      child: refreshableList(),
    );
  }
*/





}
