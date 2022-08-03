
import 'package:disenos/widgets/widget.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),

          //HomeBody
          _HomeBody(),
        ],
      ),
      //bottom navegation
      bottomNavigationBar:  CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            //titulos
            PageTitle(),

            //card table
            CardTable(),
          ],
          
        ),
      ),
    );
  }
}