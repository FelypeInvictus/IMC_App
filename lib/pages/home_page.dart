import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imc/utils/imc_calculo.dart';
import 'package:imc/utils/imc_classificacao.dart';
import 'package:imc/utils/text_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

double imc = 0;
bool isCalc = false;
double peso = 15.0;
double altura = 1.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center(
               child: Container(
                height: 100,
                width: 180,
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber),
                child: Center(child: Text("IMC: ${imc.round().toString()}", style: TextStyle(fontSize: 30, color: Colors.white),),)),
             ),
             SizedBox(height: 20,),
                         textCustom(title: "Classificação: ${classificacao(imc).toString()}"),

            //textCustom(title: "Classificação: ${isCalc ? classificacao(imc) : " "}"),
             SizedBox(height: 20,),
            textCustom(title: "Digite o teu peso:"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              height: 40,
              width: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Center(child: Text(peso.toStringAsFixed(0), style: const TextStyle(fontSize: 20, color: Colors.white),)),
            ),
             Slider(value: peso, 
             min: 10,
             max: 200,
             
                          activeColor: Colors.amber,

             onChanged: (value) {
             
              setState(() {
                 peso = value;
              });
              
            }),
            // TextFormField(
             
            //   controller: controllerPeso,
            //   keyboardType: TextInputType.number,
              
            // ),
                  SizedBox(height: 20,),
            textCustom(title: "Digite a tua altura:"),
               Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              height: 40,
              width: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Center(child: Text(altura.toStringAsFixed(2), style: const TextStyle(fontSize: 20, color: Colors.white),)),
            ),
            Slider(value: altura, 
            
             min: 1,
             max: 3,
             activeColor: Colors.amber,
            onChanged: (value) {
              
              
              
              setState(() {
                altura = value;
              });
              

            }),
            // TextFormField(
            //   controller: controllerAltura,
            //   keyboardType: TextInputType.phone,
            // ),
                  SizedBox(height: 20,),
            ElevatedButton(
              
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
             ),
              onPressed: (){
              setState(() {
                debugPrint(altura.toString());
                imc = calculaIMC(peso, altura);
              
                //isCalc = !isCalc;
              });
            }, child: textCustom(title: "Calcular")),
                  
            
            
          ],
        ),
      ),
    );
  }
}