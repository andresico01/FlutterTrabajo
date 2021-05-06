class Vehiculo {
  int llantas;
  int asientos;
  String modelo;
  String marca;

  Vehiculo(this.llantas, this.asientos, this.marca, this.modelo);

  @override
  String toString() {
    return """ 
    Vehiculo:[ 
      llantas: $llantas
      asientos: $asientos
      modelo: $modelo
      marca: $marca
      ]
    """;
  }
}

// funciones listas

void listaMostrar(var list){
  print("lista for normal \n");
  for(int i = 0; i < list.length; i++ ){
    print("datos de a lista ${list[i]}");
  }
}

void listaForEach(var list){
  print("lista forEach\n");
  list.forEach((var datosMostrar){
    print("el dato a mostrar es ${datosMostrar}");
  });
}

//Definir el mayor que

bool esMayorFunction(int numeroUno, int numeroDos) => (numeroUno > numeroDos);

// Aqui no toque nada

int compareToDateNow(String date) {
  DateTime currentTime = DateTime.now();
  DateTime otherDate = DateTime.parse(date);
  return currentTime.compareTo(otherDate);
}

String compareToDateNowasString(String date) {
  DateTime currentTime = DateTime.now();
  DateTime otherDate = DateTime.parse(date);
  int result = currentTime.compareTo(otherDate);
  return ((result >= 0) ? 'ahora o en el futuro' : ' del pasado');
}

String compareToDateNowasStringTwo(String date) {
  int result = DateTime.now().compareTo(DateTime.parse(date));
  return ((result >= 0) ? 'ahora o en el futuro' : ' del pasado');
}

// aqui escribi este factorial asi

int factorial(int valor) =>
    (valor = valor >= 1 ? valor * factorial(valor - 1) : 1);

// señala si el valor evaludao anterior mente es mayor o menor

void esMayorAsString(bool esVerdad) {
  String salida = esVerdad ? "si es mayor" : "no es mayor";

  print(salida);
}

// aqui es lo mismo que arrriba pero puede enviar un tipod e dato dinamico

dynamic esMayorDinamico(bool esVerdad) {
  return esVerdad ? "si es mayor" : 52;
}

// quise reescribir el toString pero no me funciono como queria entonces

String escribirTexto(Duration data) {
  return """
  Diferencia dias ${data.inDays}
  """;
}

/*
 * y aqui hice dos cosas lo de tiempo y el switch se que la  idea de una funcion
 * es que haga una sola tarea, pero aja estoy acostumbrado a usar switch para verificar 
 * estados de conexion de wifi o mqtt en esp 
*/
String datoTiempo(int opcion, {String fecha = " "}) {
  DateTime currentDate = fecha == " " ? DateTime.now() : DateTime.parse(fecha);
  switch (opcion) {
    case 1:
      {
        return (currentDate.toString());
      }

    case 2:
      {
        return (currentDate.toIso8601String());
      }

    case 3:
      {
        return (currentDate.toUtc().toString());
      }

    case 4:
      {
        return (currentDate.toLocal().toString());
      }

    case 5:
      {
        return (currentDate.timeZoneName);
      }
    default:
      {
        Duration diff = currentDate.difference(currentDate);
        return escribirTexto(diff);
      }
  }
}

// le señalo cuando queiro que suspenda

void controlSalida(int controlInt) {
  int count = 1;
  bool loppWhile = true;
  while (loppWhile) {
    print(" dentro del while ${count}");
    count++;
    if (count == controlInt) {
      loppWhile = false;
    }
  }
  print("afuera del while ");
}

void main() {
  int num = 5;
  
   var list = ['apples', 'bananas','orange'];
  
  listaForEach(list);
  
  listaMostrar(list);
  
  int valorFactorial = factorial(num);

  print(valorFactorial);

  print(compareToDateNowasString('2020-11-20'));

  print(compareToDateNowasString('2022-09-01'));

  print(compareToDateNowasStringTwo('2020-11-20'));

  print(compareToDateNowasStringTwo('2022-09-01'));

  String momento = ((compareToDateNow('2020-11-20') >= 0)
      ? 'ahora o en el futuro'
      : ' del pasado');

  print(momento);

  String momentoDos = ((compareToDateNow('2022-09-01') >= 0)
      ? "ahora o en el futura"
      : "del pasado");

  print(momentoDos);

  bool isTrue = true;
  bool isTrueTwo = esMayorFunction(4, 5);

  esMayorAsString(isTrueTwo);

  var esMayorVar = esMayorDinamico(isTrueTwo);
  bool esMayor = esMayorFunction(6, 7);
  print(esMayor);

  print(" es mayor de tipo var ${esMayorVar}");

  String fecha = datoTiempo(2);
  print(fecha);

  controlSalida(4);

  dynamic test = 15;
  print(test.runtimeType);
  print(test.toString());
  print(test);
  test = 'hola mundo';
  print(test.runtimeType);
  print(test);
}
