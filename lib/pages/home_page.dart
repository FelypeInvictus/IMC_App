import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imc/pages/widgets/drawer.dart';
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
  int counter = 2;
  double imc = 0;
  bool isNoCalc = true;
  double peso = 15.0;
  double altura = 1.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      drawer: customDrawer(about: "Sobre", version: "Versão", author: "Autor", context: context),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            Center(
              child: Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                  child: Center(
                    child: Text(
                      "IMC: ${imc.round().toString()}",
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            textCustom(
                title: "Classificação: ${isNoCalc ? " " : classificacao(imc)}"),
            const SizedBox(
              height: 20,
            ),
            textCustom(title: "Digite o teu peso:"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Center(
                  child: Text(
                peso.toStringAsFixed(0),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            Slider(
                value: peso,
                min: 10,
                max: 200,
                activeColor: Colors.amber,
                onChanged: (value) {
                  setState(() {
                    peso = value;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            textCustom(title: "Digite a tua altura:"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Center(
                  child: Text(
                altura.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            Slider(
                value: altura,
                min: 1,
                max: 3,
                activeColor: Colors.amber,
                onChanged: (value) {
                  setState(() {
                    altura = value;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    imc = calculaIMC(peso, altura);
                    if (counter > 1) {
                      isNoCalc = !isNoCalc;
                      counter--;
                    }
                  });
                },
                child: textCustom(title: "Calcular")),
          ],
        ),
      ),
    );
  }
}
