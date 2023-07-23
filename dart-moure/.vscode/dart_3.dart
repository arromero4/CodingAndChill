void main() {
  //object
  final cookie = Cookie(shape: 'Circle', size: 20.0);
}

class Cookie {
  final String shape;
  final double size;
  Cookie({required this.shape, required this.size}) {
    baking();
  }

  //Private Variables
  //is private for a file not a class
  int _height = 4;
  int _width = 5;

  //Getters
  //to return a value
  //is just for read
  //int get height => _height;

  //Setters
  //set a value
  //set setHeight (int h){
  //_height = h;
  //}

  //static functions
  //static variables

  //variables
  //String shape = 'circle';
  //double size = 15.2; //cm

  //functions => methods

  int calculateSize() {
    return _height * _width;
  }

  void baking() {
    print('Your $shape cookie with size of $size cm is baking');
  }

  //functions => methods
  bool isCooling() {
    return false;
  }
}

//String printStuff() => 'Andres';

//void means that this function doesn't 
//return anything
/*void printName(){
  print('Andres');
}*/
  
//Function
/*
 * simple definition
 <datatype> functionName(){
 
 }
 
 
 * */