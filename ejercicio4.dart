import 'dart:math';

class Complejo{
  double _real;
  double _img;
  Complejo(this._real, this._img);
  
  void mostrar(){
    print("( ${_real}, ${_img})");
  }
  
  void cambioReal(double aux) => _real += aux;
  void cambioImg(double aux) => _img += aux;
  double getReal() => _real;
  double getImg() => _img;
  double modulo(){
    double mod = sqrt(pow(_real,2) + pow(_img,2));
    
    return mod;
  }
  
}

Complejo sumaComplejo(Complejo a,Complejo b){
  
  a.cambioReal(b.getReal());
  a.cambioImg(b.getImg());
  
  return a; 
}
Complejo restaComplejo(Complejo a,Complejo b){
  
  a.cambioReal(-b.getReal());
  a.cambioImg(-b.getImg());
  
  return a; 
}



void main() {
 
  Complejo num = Complejo(4,7);
  num.mostrar();
  print("${num.modulo()}"); 
  Complejo num2 = Complejo(7,2);
  
  Complejo num3 = sumaComplejo(num,num2);
  
  
  
  
  
}
