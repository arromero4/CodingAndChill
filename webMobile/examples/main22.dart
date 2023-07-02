void main() {
  //Maria
  //Jose
  //Laura
  //ya no se inicializa en constructor
  //Alumno maria = Alumno(nombre: 'Maria', apellido: 'Lopez', edad: 15, telefono: '43245423523', calificaciones: [7,8,9,10]);
  Alumno maria = Alumno();
  maria.setNombre = 'Sofia';
  maria.setCalificaciones = [7, 8, 9, 10];
  print(maria.getNombre);
  maria.obtenerPromedio();

  //Alumno jose = Alumno(nombre: 'Jose', apellido: 'Joaquin', edad: 21, telefono: '98987424907', calificaciones: [10,10,9,9]);
  Alumno jose = Alumno();
  jose.setNombre = 'jose';
  jose.setCalificaciones = [7, 8, 9, 10];
  jose.obtenerPromedio();
}

class Alumno {
  String _nombre = '';
  String _apellido = '';
  int _edad = 0;
  String _telefono = '';
  List<double> _calificaciones = const [];

  //constructor
  //Alumno({this.nombre = '', this.apellido = '', this.edad = 0, this.telefono = '', this.calificaciones = const []});

  get getNombre => this._nombre;
  set setNombre(String nombre) => this._nombre = nombre;

  get getCalificaciones => this._calificaciones;
  set setCalificaciones(List<double> calificaciones) =>
      this._calificaciones = calificaciones;

  obtenerPromedio() {
    print('El promedio del ${this._nombre} es: ${_calcularPromedio()}');
  }

  _calcularPromedio() {
    return this._calificaciones.reduce((valor, elemento) => valor + elemento) /
        this._calificaciones.length;
  }
}
