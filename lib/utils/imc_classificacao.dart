String classificacao(double resultadoIMC) {
  switch (resultadoIMC) {
    case < 18.5:
      return "Magreza";
    case >= 18.5 && <= 24.5:
      return "Normal";
    case >= 25.0 && <= 29.9:
      return "Sobrepeso";
    case >= 30 && <= 39.9:
      return "Obesidade";
    case >= 40:
      return "Obesidade grave";
    default:
      return "Digite apenas numeros!";
  }
}