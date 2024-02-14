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
  var controllerPeso =  TextEditingController();
var controllerAltura = TextEditingController();
double imc = 0;
bool isCalc = false;

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
            textCustom(title: "Classificação: ${isCalc ? classificacao(imc) : " "}"),
             SizedBox(height: 20,),
            textCustom(title: "Digite o teu peso:"),
            TextFormField(
             
              controller: controllerPeso,
              keyboardType: TextInputType.number,
              
            ),
                  SizedBox(height: 20,),
            textCustom(title: "Digite a tua altura:"),
            TextFormField(
              controller: controllerAltura,
              keyboardType: TextInputType.phone,
            ),
                  SizedBox(height: 20,),
            ElevatedButton(
              
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
             ),
              onPressed: (){
              setState(() {
                imc = calculaIMC(double.parse(controllerPeso.text), double.parse(controllerAltura.text));
                controllerAltura.text = '';
                controllerPeso.text = '';
                isCalc = !isCalc;
              });
            }, child: textCustom(title: "Calcular")),
                  
            
            
          ],
        ),
      ),
    );
  }
}