import 'dart:math';

class Coordenada{
  int _coordenadaX;
  int _coordenadaY;
  
  Coordenada(this._coordenadaX,this._coordenadaY);

  int getX() => _coordenadaX;
  int getY() => _coordenadaY;
  void setX(int moverX) => _coordenadaX += moverX;
  void setY(int moverY) => _coordenadaX += moverY;
  String puntoPolares(){
    
    num radio = pow(this._coordenadaX,2) +                  pow(this._coordenadaY,2);
    radio = sqrt(radio);
    double theta = this._coordenadaY.toDouble() / this._coordenadaX;
    theta = atan(theta);
   
    return '($radio , $theta)'; 
  }
  String puntoCartesiano() => '($_coordenadaX , $_coordenadaY)';
  
  
}






void main() {
 
  Coordenada punto = Coordenada(4,5);
  
  print(punto.puntoPolares());
  
  print(punto.puntoCartesiano());
  
}
