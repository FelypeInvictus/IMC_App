class PessoaModel {
  late String _nome;
  late double _peso;
  late double _altura;


  PessoaModel();

  set nome(String nome){
    _nome = nome;
  }

  String get nome  => _nome;

  set peso(double peso){
    _peso = peso;
  }

  double get peso  => _peso;

  set altura(double altura){
    _altura = altura;
  }

  double get altura  => _altura;



  // @override
  // String toString() {
  //   return {
  //     'Nome': getNome(),
  //     'Altura:' : getAltura(),
  //     'Peso:' : getPeso(),
  //     'IMC:' : classificacao(calculaIMC(getPeso()!, getAltura()!)
  //     )
  //   }.toString();
  }

  
