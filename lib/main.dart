import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(home: bmi(),)) ;
}
class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double res=0;
void bmi(){
  double h=double.parse(height.text)/100;
      double w=double.parse(weight.text);
      double height2=h*h;
       res=w/height2;
       setState(() {});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(decoration: BoxDecoration
        (color: Colors.blueGrey,),
        child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: height,
                decoration: InputDecoration(
                  fillColor: Colors.cyan,
                  hintText: 'height',
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: weight,
                decoration: InputDecoration(
                  fillColor: Colors.cyan,
                  hintText: 'weight',
              ),
              ),
        SizedBox(height: 30,),
      ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
        child: Text(
          "Calculate",
          style: TextStyle(color: Colors.white),
        ),
          onPressed:() {
            bmi();
          }
      ),
             Text(res.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

            ],
          ),
      ),
      ),
    );
  }
}

