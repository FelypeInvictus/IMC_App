import 'package:imc/model/pessoa_model.dart';

class PessoaRepository {
  var pessoa = PessoaModel();

  double adicionarPeso(double peso){
    return pessoa.peso = peso;
  }

  double adicionarAltura(double altura){
  return pessoa.altura = altura;
  }

  


}