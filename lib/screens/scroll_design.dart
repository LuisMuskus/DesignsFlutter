import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  final boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ] 
            )
        );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       /*body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
           //Page1(),
            //Page1()
          ],
        ),
      )*/
      
      body: PageView(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Page1(),
        Page2(),
        //Page1(),
        //Page1()
      ],
    )
   );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background image
        Background(),
        //Contenido
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 60,fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text('11°', style: textStyle,),
          Text('Miércoles', style: textStyle,),
          Expanded(
            child: Container(
              //color: Colors.red,
            )
            ),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
       
        decoration: BoxDecoration(
          //color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/scroll-1.png'),
            fit: BoxFit.cover,
          ),
        ),
  );
  }
}

class Page2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){}, 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
          ),
        ),
    );
  }
}