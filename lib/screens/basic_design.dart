

import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/killer_instinct.jpg')),
          //Fila
          Title(),
          // Seccion de botones
          ButtonSection(),
          //Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Incididunt dolor culpa pariatur consequat occaecat mollit duis adipisicing. Aliqua consequat laboris Lorem non ex. Eiusmod sunt culpa laboris consectetur anim aliqua sint exercitation sunt.Eu commodo culpa et dolore aute mollit. Ut ad nisi laborum id pariatur commodo nisi labore. Labore tempor excepteur nostrud excepteur elit pariatur minim qui do. Nulla Lorem mollit culpa consectetur magna in.',
              textAlign: TextAlign.justify,)
              ),

        ],
      )
   );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call',),
          CustomButton(icon: Icons.map_sharp, text: 'Route',),
          CustomButton(icon: Icons.share, text: 'Share',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30,),
        Text(this.text, style: TextStyle( color: Colors.blue),)
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Killer instinct - Xbox 2013', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Orchid Combo', style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.yellow),
          Text('98%')
        ],
      ),
    );
  }
}