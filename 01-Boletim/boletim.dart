//Checkpoint 01
//Manuella Rinaldi - RM567915

void mostrarMedia(List<double> notas) {
  double soma = 0;
  //for aqui
  for (int i = 0; i < notas.length; i++){
    soma += notas[i];
  }  

  double media = soma / notas.length;

  print("Media da turma: ${media.toStringAsFixed(2)}");  

}

  



void mostrarMaiorNota (List<double> notas) {
  double maior = notas[0];

  for (int i = 1; i < notas.length; i++){
    if (notas[i] > maior) {
      maior = notas[i];
    }
  }  
  print("Maior nota da turma: ${maior}");
}  

void mostrarMenorNota (List<double> notas){
  double menor = notas[0];

  for (int i = 1; i < notas.length; i++){
    if(notas[i] < menor){
      menor = notas[i];
    }
  }
  print("Menor nota:$menor");
}

void mostrarSituacao (List<double> notas){
  double soma = 0;

  for(double nota in notas){
    soma += nota;
  }

  double media = soma / notas.length;

  if (media >= 7) {
   print("Situação: Aprovado");
  }else if (media >= 5) {
   print("Situação: Recuperação");
  } else {
    print("Situação: Reprovado");
  }
}










void main(){

  List<double> notas = [7.5, 4.0, 9.2, 6.0, 3.8];

  mostrarMedia(notas);
  mostrarMaiorNota(notas);
  mostrarMenorNota(notas);
  mostrarSituacao(notas);
}