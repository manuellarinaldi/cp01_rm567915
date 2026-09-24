



void main(){
  List<int> numeros = [2, 15, 17, 21,  29, 33, 41, 49];

  List<int> primos = [];
  List<int> naoPrimos = [];

  for (int numero in numeros){
    bool primo = true;

    for(int divisor = 2; divisor <= numero - 1; divisor++){
      if(numero % divisor == 0){
        primo = false;
      }
    }
    if(primo == true){
      primos.add(numero);
    } else{
      naoPrimos.add(numero);
    }
  }

  mostrarResultados(primos, naoPrimos);
}

void mostrarResultados(List<int> primos, List<int> naoPrimos){
  print("Primos(4): $primos");
  print("Não primos(4): $naoPrimos");


  int maiorPrimo = primos[0];

  for (int numero in primos) {
    if (numero > maiorPrimo) {
      maiorPrimo = numero;
    }
  }

   print("Maior primo encontrado: $maiorPrimo");
  }
   