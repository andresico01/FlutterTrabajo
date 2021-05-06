
class Pila{
  var _dato;
  Pila(this._dato);
  
  dynamic mostrarDato() => this._dato;
  
  
}





void main() {
  
  List<dynamic> pilaLista = [];
  Pila a = Pila("hola");
  pilaLista.add(a);
  
  Pila b = Pila(5);
  pilaLista.add(b);
 
  pilaLista.forEach((dynamic aux ) => print(aux.mostrarDato()));
  
}
